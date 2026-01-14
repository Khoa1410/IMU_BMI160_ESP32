idf_component_register(SRCS "main.cpp"
                            "led_control.cpp"
                            "mode2_control.cpp"
                            "Fusion/FusionAhrs.c"
                            "Fusion/FusionCompass.c"
                            "Fusion/FusionOffset.c"
                            "EKF/ekf.cpp"
                            "EKF/matrix.cpp"
                    INCLUDE_DIRS "." "Fusion" "EKF")


