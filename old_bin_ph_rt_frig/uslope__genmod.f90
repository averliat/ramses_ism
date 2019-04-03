        !COMPILER-GENERATED INTERFACE MODULE: Fri Dec 22 21:14:55 2017
        MODULE USLOPE__genmod
          INTERFACE 
            SUBROUTINE USLOPE(BF,Q,DQ,DBF,DX,DT,NGRID)
              REAL(KIND=8) :: BF(1:,-1:,-1:,-1:,1:)
              REAL(KIND=8) :: Q(1:,-1:,-1:,-1:,1:)
              REAL(KIND=8) :: DQ(1:,-1:,-1:,-1:,1:,1:)
              REAL(KIND=8) :: DBF(1:,-1:,-1:,-1:,1:,1:)
              REAL(KIND=8) :: DX
              REAL(KIND=8) :: DT
              INTEGER(KIND=4) :: NGRID
            END SUBROUTINE USLOPE
          END INTERFACE 
        END MODULE USLOPE__genmod
