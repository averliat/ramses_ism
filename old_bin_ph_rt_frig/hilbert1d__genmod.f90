        !COMPILER-GENERATED INTERFACE MODULE: Fri Dec 22 21:14:49 2017
        MODULE HILBERT1D__genmod
          INTERFACE 
            SUBROUTINE HILBERT1D(X,ORDER,NPOINT)
              INTEGER(KIND=4), INTENT(IN) :: NPOINT
              INTEGER(KIND=4), INTENT(IN) :: X(1:NPOINT)
              REAL(KIND=8), INTENT(OUT) :: ORDER(1:NPOINT)
            END SUBROUTINE HILBERT1D
          END INTERFACE 
        END MODULE HILBERT1D__genmod