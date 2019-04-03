        !COMPILER-GENERATED INTERFACE MODULE: Fri Dec 22 21:15:15 2017
        MODULE CREATE_STELLAR__genmod
          INTERFACE 
            SUBROUTINE CREATE_STELLAR(NCREATE,NBUF,XNEW,ID_NEW,         &
     &PRINT_TABLE)
              USE AMR_COMMONS, ONLY :                                   &
     &          DP,                                                     &
     &          MYID,                                                   &
     &          NCPU,                                                   &
     &          NDIM,                                                   &
     &          T
              INTEGER(KIND=4), INTENT(IN) :: NBUF
              INTEGER(KIND=4), INTENT(IN) :: NCREATE
              REAL(KIND=8), INTENT(IN) :: XNEW(1:NBUF,1:)
              INTEGER(KIND=4), INTENT(IN) :: ID_NEW(1:NBUF)
              LOGICAL(KIND=4), INTENT(IN) :: PRINT_TABLE
            END SUBROUTINE CREATE_STELLAR
          END INTERFACE 
        END MODULE CREATE_STELLAR__genmod
