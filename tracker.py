import serial
import time
import matplotlib.pyplot as plt
import matplotlib.animation as animation
from mpl_toolkits.mplot3d import Axes3D
from collections import deque
import threading
import numpy as np
from mpl_toolkits.mplot3d.art3d import Poly3DCollection
import serial.tools.list_ports

# Configuration
SERIAL_PORT = '/dev/ttyUSB0'  # Adjustable
BAUD_RATE = 921600           # High speed for 100Hz real-time
MAX_POINTS = 100            # 1 second window at 100Hz

# Data Containers
# Raw accelerometer (from RAW_ACCEL)
raw_accel_x = deque(maxlen=MAX_POINTS)
raw_accel_y = deque(maxlen=MAX_POINTS)
raw_accel_z = deque(maxlen=MAX_POINTS)

# EKF smoothed accelerometer (from EKF_ACCEL)
ekf_accel_x = deque(maxlen=MAX_POINTS)
ekf_accel_y = deque(maxlen=MAX_POINTS)
ekf_accel_z = deque(maxlen=MAX_POINTS)

# Jerk data
jerk_x = deque(maxlen=MAX_POINTS)
jerk_y = deque(maxlen=MAX_POINTS)
jerk_z = deque(maxlen=MAX_POINTS)

# Quaternion for 3D orientation (w, x, y, z)
quaternion = [1.0, 0.0, 0.0, 0.0]

# Locks for thread safety
data_lock = threading.Lock()

def read_serial():
    global quaternion
    
    # Check available ports
    ports = [p.device for p in serial.tools.list_ports.comports()]
    print(f"Available ports: {ports}")
    
    selected_port = SERIAL_PORT
    if SERIAL_PORT not in ports and ports:
        print(f"Warning: Configured port {SERIAL_PORT} not found.")
        if len(ports) == 1:
            selected_port = ports[0]
            print(f"Auto-selecting only available port: {selected_port}")
        else:
            print(f"Trying to use configured port anyway...")

    try:
        ser = serial.Serial(selected_port, BAUD_RATE, timeout=0.1)
        # Flush buffer on start
        ser.reset_input_buffer()
        print(f"Successfully connected to {selected_port} at {BAUD_RATE} baud")
    except serial.SerialException as e:
        print(f"Error opening serial port {selected_port}: {e}")
        print("Tip: Make sure no other serial monitor is open and you have permissions.")
        return

    print("Waiting for data...")
    while True:
        try:
            # Drop old packets if buffer gets too full (latency protection)
            if ser.in_waiting > 2000:
                ser.reset_input_buffer()
            
            line = ser.readline().decode('utf-8', errors='replace').strip()
            if not line or not line.startswith("D:"):
                continue
            
            # Format: D:ax,ay,az,lax,lay,laz,eax,eay,eaz,jx,jy,jz,qw,qx,qy,qz
            parts = line[2:].split(',')
            if len(parts) != 16:
                continue

            # Raw (0-2)
            ax, ay, az = int(parts[0]), int(parts[1]), int(parts[2])
            
            # EKF Smoothed Accel (6-8) (Note: 3-5 is Linear Accel, simplified display uses EKF)
            eax, eay, eaz = float(parts[6]), float(parts[7]), float(parts[8])
            
            # Jerk (9-11)
            jx, jy, jz = float(parts[9]), float(parts[10]), float(parts[11])
            
            # Quaternion (12-15)
            qw, qx, qy, qz = float(parts[12]), float(parts[13]), float(parts[14]), float(parts[15])

            with data_lock:
                raw_accel_x.append(ax)
                raw_accel_y.append(ay)
                raw_accel_z.append(az)
                
                ekf_accel_x.append(eax)
                ekf_accel_y.append(eay)
                ekf_accel_z.append(eaz)
                
                jerk_x.append(jx)
                jerk_y.append(jy)
                jerk_z.append(jz)
                
                quaternion[0] = qw
                quaternion[1] = qx
                quaternion[2] = qy
                quaternion[3] = qz

        except serial.SerialException as e:
            print(f"Serial Error: {e}")
            print(f"CRITICAL TIP: Is 'idf.py monitor' running? It locks {selected_port}. Close it and retry.")
            break
        except Exception as e:
            # print(f"Error parsing: {e}")
            continue
    
    ser.close()

# Setup Plots - 2 rows x 3 columns for accel/jerk, plus separate 3D
fig_main, axes = plt.subplots(2, 3, figsize=(14, 8))
fig_main.suptitle('Real-time IMU Data: Accelerometer & Jerk')
fig_main.tight_layout(pad=3.0)

# Row 1: Accel X, Y, Z (raw vs EKF filtered)
ax_accel_x = axes[0, 0]
ax_accel_y = axes[0, 1]
ax_accel_z = axes[0, 2]

# Row 2: Jerk X, Y, Z
ax_jerk_x = axes[1, 0]
ax_jerk_y = axes[1, 1]
ax_jerk_z = axes[1, 2]

# 3D Orientation Figure
fig_gyro = plt.figure(figsize=(6, 6))
fig_gyro.suptitle('Real-time 3D Orientation (Quaternion)')
ax_gyro = fig_gyro.add_subplot(111, projection='3d')

def quaternion_to_rotation_matrix(q):
    """Convert quaternion (w, x, y, z) to 3x3 rotation matrix.
    Note: Using conjugate because Fusion AHRS outputs orientation in NWU frame."""
    w, x, y, z = q
    # Normalize
    n = np.sqrt(w*w + x*x + y*y + z*z)
    if n < 1e-6:
        return np.eye(3)
    w, x, y, z = w/n, x/n, y/n, z/n
    
    # Use conjugate (negate x, y, z) to get body-to-world rotation
    # This fixes the orientation tracking
    x, y, z = -x, -y, -z
    
    return np.array([
        [1 - 2*(y*y + z*z), 2*(x*y - z*w), 2*(x*z + y*w)],
        [2*(x*y + z*w), 1 - 2*(x*x + z*z), 2*(y*z - x*w)],
        [2*(x*z - y*w), 2*(y*z + x*w), 1 - 2*(x*x + y*y)]
    ])

def update_main(frame):
    with data_lock:
        # Get accel data
        raw_x = list(raw_accel_x)
        raw_y = list(raw_accel_y)
        raw_z = list(raw_accel_z)
        ekf_x = list(ekf_accel_x)
        ekf_y = list(ekf_accel_y)
        ekf_z = list(ekf_accel_z)
        # Get jerk data
        j_x = list(jerk_x)
        j_y = list(jerk_y)
        j_z = list(jerk_z)
    
    # Scale raw to g for comparison (raw is in LSB, ±8g range = 4096 LSB/g)
    raw_x_g = [x / 4096.0 for x in raw_x]
    raw_y_g = [y / 4096.0 for y in raw_y]
    raw_z_g = [z / 4096.0 for z in raw_z]

    # Accel X
    ax_accel_x.clear()
    ax_accel_x.plot(raw_x_g, label='Raw', color='r', alpha=0.5)
    ax_accel_x.plot(ekf_x, label='EKF', color='darkred', linewidth=2)
    ax_accel_x.set_ylabel('Accel X (g)')
    ax_accel_x.set_title('Accel X')
    ax_accel_x.legend(loc='upper right', fontsize='small')
    ax_accel_x.grid(True)

    # Accel Y
    ax_accel_y.clear()
    ax_accel_y.plot(raw_y_g, label='Raw', color='g', alpha=0.5)
    ax_accel_y.plot(ekf_y, label='EKF', color='darkgreen', linewidth=2)
    ax_accel_y.set_ylabel('Accel Y (g)')
    ax_accel_y.set_title('Accel Y')
    ax_accel_y.legend(loc='upper right', fontsize='small')
    ax_accel_y.grid(True)

    # Accel Z
    ax_accel_z.clear()
    ax_accel_z.plot(raw_z_g, label='Raw', color='b', alpha=0.5)
    ax_accel_z.plot(ekf_z, label='EKF', color='darkblue', linewidth=2)
    ax_accel_z.set_ylabel('Accel Z (g)')
    ax_accel_z.set_title('Accel Z')
    ax_accel_z.legend(loc='upper right', fontsize='small')
    ax_accel_z.grid(True)

    # Jerk X
    ax_jerk_x.clear()
    ax_jerk_x.plot(j_x, label='Jerk X', color='orange')
    ax_jerk_x.set_ylabel('Jerk X (g/s)')
    ax_jerk_x.set_xlabel('Sample')
    ax_jerk_x.set_title('Jerk X')
    ax_jerk_x.grid(True)

    # Jerk Y
    ax_jerk_y.clear()
    ax_jerk_y.plot(j_y, label='Jerk Y', color='lime')
    ax_jerk_y.set_ylabel('Jerk Y (g/s)')
    ax_jerk_y.set_xlabel('Sample')
    ax_jerk_y.set_title('Jerk Y')
    ax_jerk_y.grid(True)

    # Jerk Z
    ax_jerk_z.clear()
    ax_jerk_z.plot(j_z, label='Jerk Z', color='cyan')
    ax_jerk_z.set_ylabel('Jerk Z (g/s)')
    ax_jerk_z.set_xlabel('Sample')
    ax_jerk_z.set_title('Jerk Z')
    ax_jerk_z.grid(True)

def update_gyro(frame):
    with data_lock:
        q = quaternion.copy()
    
    ax_gyro.clear()
    LIMIT = 1.5  # Normalized size for visualization
    ax_gyro.set_xlim([-LIMIT, LIMIT])
    ax_gyro.set_ylim([-LIMIT, LIMIT])
    ax_gyro.set_zlim([-LIMIT, LIMIT])
    
    ax_gyro.set_xlabel('X')
    ax_gyro.set_ylabel('Y')
    ax_gyro.set_zlabel('Z')
    ax_gyro.set_title(f'Quaternion: ({q[0]:.2f}, {q[1]:.2f}, {q[2]:.2f}, {q[3]:.2f})')

    # Get rotation matrix from quaternion
    R = quaternion_to_rotation_matrix(q)

    # Define the "Airplane" Geometry (pointing along +X in local frame)
    scale = 0.8
    
    # Vertices in local frame
    v_nose = np.array([scale, 0, 0])
    v_tail = np.array([-scale*0.5, 0, 0])
    v_left_wing = np.array([0, scale*0.5, 0])
    v_right_wing = np.array([0, -scale*0.5, 0])
    v_top = np.array([0, 0, scale*0.2])
    
    verts_local = np.array([v_nose, v_tail, v_left_wing, v_right_wing, v_top])
    
    # Apply rotation
    verts_rotated = (R @ verts_local.T).T
    
    # Extract rotated vertices
    v0, v1, v2, v3, v4 = verts_rotated  # nose, tail, left, right, top
    
    # Define faces
    faces = [
        [v0, v2, v1],  # Left side
        [v0, v1, v3],  # Right side
        [v0, v2, v4],  # Top left
        [v0, v4, v3],  # Top right
        [v1, v2, v4],  # Back left
        [v1, v4, v3],  # Back right
    ]
    
    poly = Poly3DCollection(faces, facecolors='cyan', edgecolors='red', alpha=0.85)
    ax_gyro.add_collection3d(poly)

    # Draw reference axes (fixed world frame)
    ax_gyro.quiver(0, 0, 0, 1, 0, 0, color='r', alpha=0.3, arrow_length_ratio=0.1)
    ax_gyro.quiver(0, 0, 0, 0, 1, 0, color='g', alpha=0.3, arrow_length_ratio=0.1)
    ax_gyro.quiver(0, 0, 0, 0, 0, 1, color='b', alpha=0.3, arrow_length_ratio=0.1)

if __name__ == "__main__":
    # Start Serial Thread
    thread = threading.Thread(target=read_serial, daemon=True)
    thread.start()

    # Create Animations (50ms = 20 FPS for smoother updates)
    ani_main = animation.FuncAnimation(fig_main, update_main, interval=50)
    ani_gyro = animation.FuncAnimation(fig_gyro, update_gyro, interval=50)

    # Show plots
    plt.show()
