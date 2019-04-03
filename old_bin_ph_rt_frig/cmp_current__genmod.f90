        !COMPILER-GENERATED INTERFACE MODULE: Fri Dec 22 21:14:54 2017
        MODULE CMP_CURRENT__genmod
          INTERFACE 
            SUBROUTINE CMP_CURRENT(BX,BY,BZ,EX_ARETE,EY_ARETE,EZ_ARETE, &
     &BUFFER,NX,NY,NZ,NGRID,DX,DY,DZ)
              INTEGER(KIND=4) :: NZ
              INTEGER(KIND=4) :: NY
              INTEGER(KIND=4) :: NX
              REAL(KIND=8) :: BX(1:,0:NX+2,-1:NY+2,-1:NZ+2)
              REAL(KIND=8) :: BY(1:,-1:NX+2,0:NY+2,-1:NZ+2)
              REAL(KIND=8) :: BZ(1:,-1:NX+2,-1:NY+2,0:NZ+2)
              REAL(KIND=8) :: EX_ARETE(1:,1:NX,1:NY+1,1:NZ+1)
              REAL(KIND=8) :: EY_ARETE(1:,1:NX+1,1:NY,1:NZ+1)
              REAL(KIND=8) :: EZ_ARETE(1:,1:NX+1,1:NY+1,1:NZ)
              LOGICAL(KIND=4) :: BUFFER(1:,-1:NX+2,-1:NY+2,-1:NZ+2)
              INTEGER(KIND=4) :: NGRID
              REAL(KIND=8) :: DX
              REAL(KIND=8) :: DY
              REAL(KIND=8) :: DZ
            END SUBROUTINE CMP_CURRENT
          END INTERFACE 
        END MODULE CMP_CURRENT__genmod
