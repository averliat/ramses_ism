        !COMPILER-GENERATED INTERFACE MODULE: Fri Dec 22 21:14:39 2017
        MODULE PLANCK_ANA__genmod
          INTERFACE 
            FUNCTION PLANCK_ANA(DENS,TP,TR,IGROUP)
              REAL(KIND=8), INTENT(IN) :: DENS
              REAL(KIND=8), INTENT(IN) :: TP
              REAL(KIND=8), INTENT(IN) :: TR
              INTEGER(KIND=4), INTENT(IN) :: IGROUP
              REAL(KIND=8) :: PLANCK_ANA
            END FUNCTION PLANCK_ANA
          END INTERFACE 
        END MODULE PLANCK_ANA__genmod
