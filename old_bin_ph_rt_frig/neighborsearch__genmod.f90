        !COMPILER-GENERATED INTERFACE MODULE: Fri Dec 22 21:15:12 2017
        MODULE NEIGHBORSEARCH__genmod
          INTERFACE 
            SUBROUTINE NEIGHBORSEARCH(XX,IND_CELL,IND_MAX,NP,COUNT,     &
     &ILEVEL,ACTION)
              USE AMR_COMMONS
              REAL(KIND=8) :: XX(1:NCOARSE+NGRIDMAX*8)
              INTEGER(KIND=4) :: IND_CELL(1:)
              INTEGER(KIND=4) :: IND_MAX(1:)
              INTEGER(KIND=4) :: NP
              INTEGER(KIND=4) :: COUNT
              INTEGER(KIND=4) :: ILEVEL
              INTEGER(KIND=4) :: ACTION
            END SUBROUTINE NEIGHBORSEARCH
          END INTERFACE 
        END MODULE NEIGHBORSEARCH__genmod
