#include "ekf.h"

EKF::EKF(const Matrix &XInit, const Matrix &P, const Matrix &Q, const Matrix &R,
         bool (*bNonlinearUpdateX)(Matrix &, const Matrix &, const Matrix &),
         bool (*bNonlinearUpdateY)(Matrix &, const Matrix &, const Matrix &),
         bool (*bCalcJacobianF)(Matrix &, const Matrix &, const Matrix &),
         bool (*bCalcJacobianH)(Matrix &, const Matrix &, const Matrix &)) {

  this->X_Est = XInit;
  this->P = P;
  this->Q = Q;
  this->R = R;
  this->bNonlinearUpdateX = bNonlinearUpdateX;
  this->bNonlinearUpdateY = bNonlinearUpdateY;
  this->bCalcJacobianF = bCalcJacobianF;
  this->bCalcJacobianH = bCalcJacobianH;
}

void EKF::vReset(const Matrix &XInit, const Matrix &P, const Matrix &Q,
                 const Matrix &R) {
  this->X_Est = XInit;
  this->P = P;
  this->Q = Q;
  this->R = R;
}

bool EKF::bUpdate(const Matrix &Y, const Matrix &U) {

  /* =============== Calculate the Jacobian matrix of f (i.e. F) ===============
   */
  /* F = d(f(..))/dx |x(k-1|k-1),u(k-1)                               ...{EKF_1}
   */
  if (!bCalcJacobianF(F, X_Est, U)) {
    return false;
  }

  /* =========================== Prediction of x & P ===========================
   */
  /* x(k|k-1) = f[x(k-1|k-1), u(k-1)]                                 ...{EKF_2}
   */
  if (!bNonlinearUpdateX(X_Est, X_Est, U)) {
    return false;
  }

  /* P(k|k-1)  = F*P(k-1|k-1)*F' + Q                                  ...{EKF_3}
   */
  P = F * P * (F.Transpose()) + Q;

  /* =============== Calculate the Jacobian matrix of h (i.e. H) ===============
   */
  /* H = d(h(..))/dx |x(k|k-1)                                        ...{EKF_4}
   */
  if (!bCalcJacobianH(H, X_Est, U)) {
    return false;
  }

  /* =========================== Correction of x & P ===========================
   */
  /* S       = H*P(k|k-1)*H' + R                                      ...{EKF_5}
   */
  S = (H * P * (H.Transpose())) + R;

  /* K       = P(k|k-1)*H'*(S^-1)                                     ...{EKF_6}
   */
  Gain = P * (H.Transpose()) * (S.Invers());
  if (!Gain.bMatrixIsValid()) {
    return false;
  }

  /* x(k|k) = x(k|k-1) + K*[y(k) - h(x(k|k-1))]                       ...{EKF_7}
   */
  if (!bNonlinearUpdateY(Y_Est, X_Est, U)) {
    return false;
  }
  X_Est = X_Est + (Gain * (Y - Y_Est));

  /* P(k|k)  = (I - K*H)*P(k|k-1)                                     ...{EKF_8}
   */
  P = (MatIdentity(SS_X_LEN) - (Gain * H)) * P;

  return true;
}
