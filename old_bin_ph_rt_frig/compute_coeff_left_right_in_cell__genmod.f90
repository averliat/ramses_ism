        !COMPILER-GENERATED INTERFACE MODULE: Fri Dec 22 21:15:00 2017
        MODULE COMPUTE_COEFF_LEFT_RIGHT_IN_CELL__genmod
          INTERFACE 
            SUBROUTINE COMPUTE_COEFF_LEFT_RIGHT_IN_CELL(I,IDIM,CELL_LEFT&
     &,CELL_RIGHT,NBOR_ILEVEL,DX_LOC,COEFF_LEFT,COEFF_RIGHT)
              INTEGER(KIND=4), INTENT(IN) :: I
              INTEGER(KIND=4), INTENT(IN) :: IDIM
              INTEGER(KIND=4), INTENT(IN) :: CELL_LEFT
              INTEGER(KIND=4), INTENT(IN) :: CELL_RIGHT
              INTEGER(KIND=4), INTENT(IN) :: NBOR_ILEVEL(6)
              REAL(KIND=8), INTENT(IN) :: DX_LOC
              REAL(KIND=8), INTENT(OUT) :: COEFF_LEFT(0,0)
              REAL(KIND=8), INTENT(OUT) :: COEFF_RIGHT(0,0)
            END SUBROUTINE COMPUTE_COEFF_LEFT_RIGHT_IN_CELL
          END INTERFACE 
        END MODULE COMPUTE_COEFF_LEFT_RIGHT_IN_CELL__genmod
