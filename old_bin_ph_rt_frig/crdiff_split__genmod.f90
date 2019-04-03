        !COMPILER-GENERATED INTERFACE MODULE: Fri Dec 22 21:15:02 2017
        MODULE CRDIFF_SPLIT__genmod
          INTERFACE 
            SUBROUTINE CRDIFF_SPLIT(UIN,FLUX,DX,DY,DZ,DT,NGRID,COMPUTE, &
     &FDX,IGROUP)
              REAL(KIND=8) :: UIN(1:,-1:,-1:,-1:,1:)
              REAL(KIND=8) :: FLUX(1:,1:,1:,1:,1:,1:)
              REAL(KIND=8) :: DX
              REAL(KIND=8) :: DY
              REAL(KIND=8) :: DZ
              REAL(KIND=8) :: DT
              INTEGER(KIND=4) :: NGRID
              INTEGER(KIND=4) :: COMPUTE
              REAL(KIND=8) :: FDX(1:,-1:,-1:,-1:)
              INTEGER(KIND=4) :: IGROUP
            END SUBROUTINE CRDIFF_SPLIT
          END INTERFACE 
        END MODULE CRDIFF_SPLIT__genmod
