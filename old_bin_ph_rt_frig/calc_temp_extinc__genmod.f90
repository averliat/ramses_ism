        !COMPILER-GENERATED INTERFACE MODULE: Fri Dec 22 21:15:01 2017
        MODULE CALC_TEMP_EXTINC__genmod
          INTERFACE 
            SUBROUTINE CALC_TEMP_EXTINC(NN,TT,DT_TOT_UNICODE,           &
     &VCOLUMN_DENS,COEFF_CHI)
              USE AMR_PARAMETERS
              REAL(KIND=8) :: NN
              REAL(KIND=8) :: TT
              REAL(KIND=8) :: DT_TOT_UNICODE
              REAL(KIND=8), INTENT(INOUT) :: VCOLUMN_DENS(1:NDIREXT_M,1:&
     &NDIREXT_N)
              REAL(KIND=8) :: COEFF_CHI
            END SUBROUTINE CALC_TEMP_EXTINC
          END INTERFACE 
        END MODULE CALC_TEMP_EXTINC__genmod