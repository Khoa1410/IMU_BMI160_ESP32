gcc -c library/Fusion-1.2.11/Fusion/FusionAhrs.c -o FusionAhrs.o -I library/Fusion-1.2.11/Fusion
gcc -c library/Fusion-1.2.11/Fusion/FusionOffset.c -o FusionOffset.o -I library/Fusion-1.2.11/Fusion

# Compile EKF
g++ -c library/ekf_jerk/ekf.cpp -o ekf.o -I library/ekf_jerk
g++ -c library/ekf_jerk/matrix.cpp -o matrix.o -I library/ekf_jerk

g++ -c library/savitzky-golay/src/gram_savitzky_golay.cpp -o gram_savitzky_golay.o -I library/savitzky-golay/include -I /usr/include/eigen3
g++ -o fusion_bmi160 fusion_bmi160.cpp FusionAhrs.o FusionOffset.o -I. -lm
g++ -o jerk_calc jerk_calc.cpp gram_savitzky_golay.o ekf.o matrix.o -I library/savitzky-golay/include -I /usr/include/eigen3 -I library/ekf_jerk
# Compile Accel EKF
g++ -c library/ekf_accel/ekf.cpp -o ekf_accel.o -I library/ekf_accel
g++ -c library/ekf_accel/matrix.cpp -o matrix_accel.o -I library/ekf_accel
g++ -o accel_ekf accel_ekf.cpp ekf_accel.o matrix_accel.o -I library/ekf_accel

./fusion_bmi160
# ./jerk_calc # Commented out as per user request to not use SG
./accel_ekf