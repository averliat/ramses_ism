        !COMPILER-GENERATED INTERFACE MODULE: Fri Dec 22 21:15:01 2017
        MODULE CHAUD_FROID_2__genmod
          INTERFACE 
            SUBROUTINE CHAUD_FROID_2(T,N,REF,DREFDT,VCOLUMN_DENS,SC_L,  &
     &COEFF_CHI)
              USE AMR_PARAMETERS
              REAL(KIND=8) :: T
              REAL(KIND=8) :: N
              REAL(KIND=8) :: REF
              REAL(KIND=8) :: DREFDT
              REAL(KIND=8), INTENT(INOUT) :: VCOLUMN_DENS(1:NDIREXT_M,1:&
     &NDIREXT_N)
              REAL(KIND=8) :: SC_L
              REAL(KIND=8) :: COEFF_CHI
            END SUBROUTINE CHAUD_FROID_2
          END INTERFACE 
        END MODULE CHAUD_FROID_2__genmod
