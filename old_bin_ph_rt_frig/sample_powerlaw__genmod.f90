        !COMPILER-GENERATED INTERFACE MODULE: Fri Dec 22 21:15:15 2017
        MODULE SAMPLE_POWERLAW__genmod
          INTERFACE 
            SUBROUTINE SAMPLE_POWERLAW(X,A,B,ALPHA,N)
              USE AMR_COMMONS
              INTEGER(KIND=4), INTENT(IN) :: N
              REAL(KIND=8), INTENT(OUT) :: X(1:N)
              REAL(KIND=8), INTENT(IN) :: A
              REAL(KIND=8), INTENT(IN) :: B
              REAL(KIND=8), INTENT(IN) :: ALPHA
            END SUBROUTINE SAMPLE_POWERLAW
          END INTERFACE 
        END MODULE SAMPLE_POWERLAW__genmod
