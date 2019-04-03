        !COMPILER-GENERATED INTERFACE MODULE: Fri Dec 22 21:15:10 2017
        MODULE CIC_GET_CELLS__genmod
          INTERFACE 
            SUBROUTINE CIC_GET_CELLS(INDP,XX,VOL,OK,IND_GRID,XPART,     &
     &IND_GRID_PART,NG,NP,ILEVEL)
              INTEGER(KIND=4) :: INDP(1:,1:)
              REAL(KIND=8) :: XX(1:,1:,8)
              REAL(KIND=8) :: VOL(1:,1:)
              LOGICAL(KIND=4) :: OK(1:,1:)
              INTEGER(KIND=4) :: IND_GRID(1:)
              REAL(KIND=8) :: XPART(1:,1:)
              INTEGER(KIND=4) :: IND_GRID_PART(1:)
              INTEGER(KIND=4) :: NG
              INTEGER(KIND=4) :: NP
              INTEGER(KIND=4) :: ILEVEL
            END SUBROUTINE CIC_GET_CELLS
          END INTERFACE 
        END MODULE CIC_GET_CELLS__genmod
