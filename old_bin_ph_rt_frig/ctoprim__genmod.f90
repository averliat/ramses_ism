        !COMPILER-GENERATED INTERFACE MODULE: Fri Dec 22 21:14:55 2017
        MODULE CTOPRIM__genmod
          INTERFACE 
            SUBROUTINE CTOPRIM(UIN,Q,BF,GRAVIN,DT,NGRID)
              REAL(KIND=8) :: UIN(1:,-1:,-1:,-1:,1:)
              REAL(KIND=8) :: Q(1:,-1:,-1:,-1:,1:)
              REAL(KIND=8) :: BF(1:,-1:,-1:,-1:,1:)
              REAL(KIND=8) :: GRAVIN(1:,-1:,-1:,-1:,1:)
              REAL(KIND=8) :: DT
              INTEGER(KIND=4) :: NGRID
            END SUBROUTINE CTOPRIM
          END INTERFACE 
        END MODULE CTOPRIM__genmod
