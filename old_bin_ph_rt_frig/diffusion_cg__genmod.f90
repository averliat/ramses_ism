        !COMPILER-GENERATED INTERFACE MODULE: Fri Dec 22 21:15:00 2017
        MODULE DIFFUSION_CG__genmod
          INTERFACE 
            SUBROUTINE DIFFUSION_CG(ILEVEL,NSUB)
              USE AMR_COMMONS, ONLY :                                   &
     &          MYID,                                                   &
     &          NUMBTOT,                                                &
     &          ACTIVE,                                                 &
     &          SON,                                                    &
     &          NCPU,                                                   &
     &          RECEPTION,                                              &
     &          DTNEW,                                                  &
     &          NCOARSE,                                                &
     &          NSTEP
              USE HYDRO_COMMONS
              INTEGER(KIND=4), INTENT(IN) :: ILEVEL
              INTEGER(KIND=4), INTENT(IN) :: NSUB
            END SUBROUTINE DIFFUSION_CG
          END INTERFACE 
        END MODULE DIFFUSION_CG__genmod
