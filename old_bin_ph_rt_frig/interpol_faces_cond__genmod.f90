        !COMPILER-GENERATED INTERFACE MODULE: Fri Dec 22 21:15:04 2017
        MODULE INTERPOL_FACES_COND__genmod
          INTERFACE 
            SUBROUTINE INTERPOL_FACES_COND(B1,U,V,W,NN)
              REAL(KIND=8) :: B1(1:,0:,1:)
              REAL(KIND=8) :: U(1:,-1:,0:,0:)
              REAL(KIND=8) :: V(1:,0:,-1:,0:)
              REAL(KIND=8) :: W(1:,0:,0:,-1:)
              INTEGER(KIND=4) :: NN
            END SUBROUTINE INTERPOL_FACES_COND
          END INTERFACE 
        END MODULE INTERPOL_FACES_COND__genmod
