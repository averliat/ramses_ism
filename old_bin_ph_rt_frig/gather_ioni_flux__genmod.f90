        !COMPILER-GENERATED INTERFACE MODULE: Fri Dec 22 21:15:15 2017
        MODULE GATHER_IONI_FLUX__genmod
          INTERFACE 
            SUBROUTINE GATHER_IONI_FLUX(DT,SINK_IONI_FLUX)
              USE PM_COMMONS
              REAL(KIND=8), INTENT(IN) :: DT
              REAL(KIND=8), INTENT(OUT) :: SINK_IONI_FLUX(1:NSINK,1:)
            END SUBROUTINE GATHER_IONI_FLUX
          END INTERFACE 
        END MODULE GATHER_IONI_FLUX__genmod