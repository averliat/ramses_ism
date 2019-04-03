        !COMPILER-GENERATED INTERFACE MODULE: Fri Dec 22 21:14:57 2017
        MODULE COPY_FROM_REFINED_FACES__genmod
          INTERFACE 
            SUBROUTINE COPY_FROM_REFINED_FACES(B1,IND1,U,V,W,NN)
              REAL(KIND=8) :: B1(1:,0:,1:)
              INTEGER(KIND=4) :: IND1(1:,0:)
              REAL(KIND=8) :: U(1:,-1:,0:,0:)
              REAL(KIND=8) :: V(1:,0:,-1:,0:)
              REAL(KIND=8) :: W(1:,0:,0:,-1:)
              INTEGER(KIND=4) :: NN
            END SUBROUTINE COPY_FROM_REFINED_FACES
          END INTERFACE 
        END MODULE COPY_FROM_REFINED_FACES__genmod
