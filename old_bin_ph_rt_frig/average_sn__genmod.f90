        !COMPILER-GENERATED INTERFACE MODULE: Fri Dec 22 21:15:11 2017
        MODULE AVERAGE_SN__genmod
          INTERFACE 
            SUBROUTINE AVERAGE_SN(XSN,VOL_GAS,DQ,EKBLAST,IND_BLAST,NSN)
              INTEGER(KIND=4) :: NSN
              REAL(KIND=8) :: XSN(1:NSN,1:)
              REAL(KIND=8) :: VOL_GAS(1:NSN)
              REAL(KIND=8) :: DQ(1:NSN,1:)
              REAL(KIND=8) :: EKBLAST(1:NSN)
              INTEGER(KIND=4) :: IND_BLAST(1:NSN)
            END SUBROUTINE AVERAGE_SN
          END INTERFACE 
        END MODULE AVERAGE_SN__genmod
