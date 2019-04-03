        !COMPILER-GENERATED INTERFACE MODULE: Fri Dec 22 21:14:58 2017
        MODULE EIGEN_CONS__genmod
          INTERFACE 
            SUBROUTINE EIGEN_CONS(D,VX,VY,VZ,H,BX,BY,BZ,XFAC,YFAC,LAMBDA&
     &,REM,LEM)
              REAL(KIND=8) :: D
              REAL(KIND=8) :: VX
              REAL(KIND=8) :: VY
              REAL(KIND=8) :: VZ
              REAL(KIND=8) :: H
              REAL(KIND=8) :: BX
              REAL(KIND=8) :: BY
              REAL(KIND=8) :: BZ
              REAL(KIND=8) :: XFAC
              REAL(KIND=8) :: YFAC
              REAL(KIND=8) :: LAMBDA(7)
              REAL(KIND=8) :: REM(7,7)
              REAL(KIND=8) :: LEM(7,7)
            END SUBROUTINE EIGEN_CONS
          END INTERFACE 
        END MODULE EIGEN_CONS__genmod
