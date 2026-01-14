/************************************************************************************
 * Class Matrix
 *  See matrix.h for description
 *
 * See https://github.com/pronenewbits for more!
 *************************************************************************************/

#include "matrix.h"
#include <cstdlib>
#include <iostream>

void SPEW_THE_ERROR(char const *str) {
#if (SYSTEM_IMPLEMENTATION == SYSTEM_IMPLEMENTATION_PC)
  std::cerr << "EKF Assertion Failed: " << str << std::endl;
  std::exit(1);
#endif
}
