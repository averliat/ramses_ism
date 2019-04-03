        !COMPILER-GENERATED INTERFACE MODULE: Fri Dec 22 21:15:00 2017
        MODULE QR_NU__genmod
          INTERFACE 
            FUNCTION QR_NU(QR,ER,IGRP,NU,SCALE_D,SCALE_V)
              REAL(KIND=8), INTENT(IN) :: QR
              REAL(KIND=8), INTENT(IN) :: ER
              INTEGER(KIND=4), INTENT(IN) :: IGRP
              REAL(KIND=8), INTENT(IN) :: NU
              REAL(KIND=8), INTENT(IN) :: SCALE_D
              REAL(KIND=8), INTENT(IN) :: SCALE_V
              REAL(KIND=8) :: QR_NU
            END FUNCTION QR_NU
          END INTERFACE 
        END MODULE QR_NU__genmod
