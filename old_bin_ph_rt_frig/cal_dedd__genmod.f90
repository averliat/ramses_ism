        !COMPILER-GENERATED INTERFACE MODULE: Fri Dec 22 21:15:00 2017
        MODULE CAL_DEDD__genmod
          INTERFACE 
            SUBROUTINE CAL_DEDD(E,F,DEDD,DEDD_DE,DEDD_DF)
              REAL(KIND=8) :: E
              REAL(KIND=8) :: F(1:)
              REAL(KIND=8) :: DEDD(3,3)
              REAL(KIND=8) :: DEDD_DE(3,3)
              REAL(KIND=8) :: DEDD_DF(3,3,3)
            END SUBROUTINE CAL_DEDD
          END INTERFACE 
        END MODULE CAL_DEDD__genmod
