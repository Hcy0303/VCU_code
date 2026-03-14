/*
 * Academic License - for use in teaching, academic research, and meeting
 * course requirements at degree granting institutions only.  Not for
 * government, commercial, or other organizational use.
 *
 * File: plook_u32fd_evenca.c
 *
 * Code generated for Simulink model 'fourdrive_test'.
 *
 * Model version                  : 9.367
 * Simulink Coder version         : 9.8 (R2022b) 13-May-2022
 * C/C++ source code generated on : Wed Mar 11 21:10:52 2026
 */

#include "plook_u32fd_evenca.h"
#include "rtwtypes.h"

uint32_T plook_u32fd_evenca(real32_T u, real32_T bp0, real32_T bpSpace, uint32_T
  maxIndex, real_T *fraction)
{
  real32_T fbpIndex;
  real32_T invSpc;
  uint32_T bpIndex;

  /* Prelookup - Index and Fraction
     Index Search method: 'even'
     Extrapolation method: 'Clip'
     Use previous index: 'off'
     Use last breakpoint for index at or above upper limit: 'on'
     Remove protection against out-of-range input in generated code: 'off'
   */
  if (u <= bp0) {
    bpIndex = 0U;
    *fraction = 0.0;
  } else {
    invSpc = 1.0F / bpSpace;
    fbpIndex = (u - bp0) * invSpc;
    if (fbpIndex < maxIndex) {
      bpIndex = (uint32_T)fbpIndex;
      *fraction = (u - ((real32_T)(uint32_T)fbpIndex * bpSpace + bp0)) * invSpc;
    } else {
      bpIndex = maxIndex;
      *fraction = 0.0;
    }
  }

  return bpIndex;
}

/*
 * File trailer for generated code.
 *
 * [EOF]
 */
