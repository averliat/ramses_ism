        !COMPILER-GENERATED INTERFACE MODULE: Fri Dec 22 21:15:01 2017
        MODULE GET_DX__genmod
          INTERFACE 
            SUBROUTINE GET_DX(X0,XCEL,M,N,DX0,DX_CROSS)
              REAL(KIND=8), INTENT(IN) :: X0(1:)
              REAL(KIND=8), INTENT(IN) :: XCEL(1:)
              INTEGER(KIND=4), INTENT(IN) :: M
              INTEGER(KIND=4), INTENT(IN) :: N
              REAL(KIND=8), INTENT(IN) :: DX0
              REAL(KIND=8), INTENT(OUT) :: DX_CROSS
            END SUBROUTINE GET_DX
          END INTERFACE 
        END MODULE GET_DX__genmod
