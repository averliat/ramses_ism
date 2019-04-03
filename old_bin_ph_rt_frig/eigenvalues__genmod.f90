        !COMPILER-GENERATED INTERFACE MODULE: Fri Dec 22 21:14:58 2017
        MODULE EIGENVALUES__genmod
          INTERFACE 
            SUBROUTINE EIGENVALUES(D,VX,VY,VZ,P,BX,BY,BZ,LAMBDA)
              REAL(KIND=8), INTENT(IN) :: D
              REAL(KIND=8), INTENT(IN) :: VX
              REAL(KIND=8), INTENT(IN) :: VY
              REAL(KIND=8), INTENT(IN) :: VZ
              REAL(KIND=8), INTENT(IN) :: P
              REAL(KIND=8), INTENT(IN) :: BX
              REAL(KIND=8), INTENT(IN) :: BY
              REAL(KIND=8), INTENT(IN) :: BZ
              REAL(KIND=8), INTENT(OUT) :: LAMBDA(1:)
            END SUBROUTINE EIGENVALUES
          END INTERFACE 
        END MODULE EIGENVALUES__genmod
