        !COMPILER-GENERATED INTERFACE MODULE: Fri Dec 22 21:15:02 2017
        MODULE CMPXCRFLX__genmod
          INTERFACE 
            SUBROUTINE CMPXCRFLX(TEMP,BF,MYFLUX,DX,DY,DZ,DT,NGRID,      &
     &COMPUTE,FFDX,DPARA,KPERP)
              REAL(KIND=8) :: TEMP(1:,-1:,-1:,-1:)
              REAL(KIND=8) :: BF(1:,-1:,-1:,-1:,1:)
              REAL(KIND=8) :: MYFLUX(1:,1:,1:,1:)
              REAL(KIND=8) :: DX
              REAL(KIND=8) :: DY
              REAL(KIND=8) :: DZ
              REAL(KIND=8) :: DT
              INTEGER(KIND=4) :: NGRID
              INTEGER(KIND=4) :: COMPUTE
              REAL(KIND=8) :: FFDX(1:,-1:,-1:,-1:)
              REAL(KIND=8) :: DPARA(1:,-1:,-1:,-1:)
              REAL(KIND=8) :: KPERP(1:,-1:,-1:,-1:)
            END SUBROUTINE CMPXCRFLX
          END INTERFACE 
        END MODULE CMPXCRFLX__genmod
