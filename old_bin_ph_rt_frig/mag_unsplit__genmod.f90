        !COMPILER-GENERATED INTERFACE MODULE: Fri Dec 22 21:14:55 2017
        MODULE MAG_UNSPLIT__genmod
          INTERFACE 
            SUBROUTINE MAG_UNSPLIT(UIN,GRAVIN,FLUX,EMFX,EMFY,EMFZ,TMP,DX&
     &,DY,DZ,DT,NGRID,IND_GRID,JCELL)
              REAL(KIND=8) :: UIN(1:,-1:,-1:,-1:,1:)
              REAL(KIND=8) :: GRAVIN(1:,-1:,-1:,-1:,1:)
              REAL(KIND=8) :: FLUX(1:,1:,1:,1:,1:,1:)
              REAL(KIND=8) :: EMFX(1:,1:,1:,1:)
              REAL(KIND=8) :: EMFY(1:,1:,1:,1:)
              REAL(KIND=8) :: EMFZ(1:,1:,1:,1:)
              REAL(KIND=8) :: TMP(1:,1:,1:,1:,1:,1:)
              REAL(KIND=8) :: DX
              REAL(KIND=8) :: DY
              REAL(KIND=8) :: DZ
              REAL(KIND=8) :: DT
              INTEGER(KIND=4) :: NGRID
              INTEGER(KIND=4) :: IND_GRID(1:)
              REAL(KIND=8) :: JCELL(1:,-1:,-1:,-1:,1:)
            END SUBROUTINE MAG_UNSPLIT
          END INTERFACE 
        END MODULE MAG_UNSPLIT__genmod
