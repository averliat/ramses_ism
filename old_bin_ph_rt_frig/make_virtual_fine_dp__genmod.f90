        !COMPILER-GENERATED INTERFACE MODULE: Fri Dec 22 21:14:47 2017
        MODULE MAKE_VIRTUAL_FINE_DP__genmod
          INTERFACE 
            SUBROUTINE MAKE_VIRTUAL_FINE_DP(XX,ILEVEL)
              USE AMR_COMMONS
              REAL(KIND=8) :: XX(1:NCOARSE+NGRIDMAX*8)
              INTEGER(KIND=4) :: ILEVEL
            END SUBROUTINE MAKE_VIRTUAL_FINE_DP
          END INTERFACE 
        END MODULE MAKE_VIRTUAL_FINE_DP__genmod
