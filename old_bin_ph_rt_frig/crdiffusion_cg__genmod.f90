        !COMPILER-GENERATED INTERFACE MODULE: Fri Dec 22 21:15:02 2017
        MODULE CRDIFFUSION_CG__genmod
          INTERFACE 
            SUBROUTINE CRDIFFUSION_CG(ILEVEL,NSUB)
              USE AMR_COMMONS
              USE COOLING_MODULE, ONLY :                                &
     &          KB,                                                     &
     &          MH,                                                     &
     &          CLIGHT
              INTEGER(KIND=4), INTENT(IN) :: ILEVEL
              INTEGER(KIND=4), INTENT(IN) :: NSUB
            END SUBROUTINE CRDIFFUSION_CG
          END INTERFACE 
        END MODULE CRDIFFUSION_CG__genmod
