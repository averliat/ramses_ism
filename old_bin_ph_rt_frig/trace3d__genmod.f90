        !COMPILER-GENERATED INTERFACE MODULE: Fri Dec 22 21:14:55 2017
        MODULE TRACE3D__genmod
          INTERFACE 
            SUBROUTINE TRACE3D(Q,BF,DQ,DBF,QM,QP,QRT,QRB,QLT,QLB,DX,DY, &
     &DZ,DT,NGRID)
              REAL(KIND=8) :: Q(1:,-1:,-1:,-1:,1:)
              REAL(KIND=8) :: BF(1:,-1:,-1:,-1:,1:)
              REAL(KIND=8) :: DQ(1:,-1:,-1:,-1:,1:,1:)
              REAL(KIND=8) :: DBF(1:,-1:,-1:,-1:,1:,1:)
              REAL(KIND=8) :: QM(1:,-1:,-1:,-1:,1:,1:)
              REAL(KIND=8) :: QP(1:,-1:,-1:,-1:,1:,1:)
              REAL(KIND=8) :: QRT(1:,-1:,-1:,-1:,1:,1:)
              REAL(KIND=8) :: QRB(1:,-1:,-1:,-1:,1:,1:)
              REAL(KIND=8) :: QLT(1:,-1:,-1:,-1:,1:,1:)
              REAL(KIND=8) :: QLB(1:,-1:,-1:,-1:,1:,1:)
              REAL(KIND=8) :: DX
              REAL(KIND=8) :: DY
              REAL(KIND=8) :: DZ
              REAL(KIND=8) :: DT
              INTEGER(KIND=4) :: NGRID
            END SUBROUTINE TRACE3D
          END INTERFACE 
        END MODULE TRACE3D__genmod
