        !COMPILER-GENERATED INTERFACE MODULE: Fri Dec 22 21:15:13 2017
        MODULE COMPUTE_CLUMP_PROPERTIES__genmod
          INTERFACE 
            SUBROUTINE COMPUTE_CLUMP_PROPERTIES(XX)
              USE AMR_COMMONS
              USE HYDRO_COMMONS, ONLY :                                 &
     &          UOLD,                                                   &
     &          INENER,                                                 &
     &          NENER,                                                  &
     &          NVAR
              REAL(KIND=8) :: XX(1:NCOARSE+NGRIDMAX*8)
            END SUBROUTINE COMPUTE_CLUMP_PROPERTIES
          END INTERFACE 
        END MODULE COMPUTE_CLUMP_PROPERTIES__genmod
