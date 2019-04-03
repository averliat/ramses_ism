        !COMPILER-GENERATED INTERFACE MODULE: Fri Dec 22 21:14:55 2017
        MODULE CMP_MAG_FLX__genmod
          INTERFACE 
            SUBROUTINE CMP_MAG_FLX(QRT,IRT1,IRT2,JRT1,JRT2,KRT1,KRT2,QRB&
     &,IRB1,IRB2,JRB1,JRB2,KRB1,KRB2,QLT,ILT1,ILT2,JLT1,JLT2,KLT1,KLT2, &
     &QLB,ILB1,ILB2,JLB1,JLB2,KLB1,KLB2,ILO,IHI,JLO,JHI,KLO,KHI,LP1,LP2,&
     &LOR,BP1,BP2,BOR,EMF,NGRID)
              INTEGER(KIND=4) :: KLB2
              INTEGER(KIND=4) :: KLB1
              INTEGER(KIND=4) :: JLB2
              INTEGER(KIND=4) :: JLB1
              INTEGER(KIND=4) :: ILB2
              INTEGER(KIND=4) :: ILB1
              INTEGER(KIND=4) :: KLT2
              INTEGER(KIND=4) :: KLT1
              INTEGER(KIND=4) :: JLT2
              INTEGER(KIND=4) :: JLT1
              INTEGER(KIND=4) :: ILT2
              INTEGER(KIND=4) :: ILT1
              INTEGER(KIND=4) :: KRB2
              INTEGER(KIND=4) :: KRB1
              INTEGER(KIND=4) :: JRB2
              INTEGER(KIND=4) :: JRB1
              INTEGER(KIND=4) :: IRB2
              INTEGER(KIND=4) :: IRB1
              INTEGER(KIND=4) :: KRT2
              INTEGER(KIND=4) :: KRT1
              INTEGER(KIND=4) :: JRT2
              INTEGER(KIND=4) :: JRT1
              INTEGER(KIND=4) :: IRT2
              INTEGER(KIND=4) :: IRT1
              REAL(KIND=8) :: QRT(1:,IRT1:IRT2,JRT1:JRT2,KRT1:KRT2,1:,1:&
     &)
              REAL(KIND=8) :: QRB(1:,IRB1:IRB2,JRB1:JRB2,KRB1:KRB2,1:,1:&
     &)
              REAL(KIND=8) :: QLT(1:,ILT1:ILT2,JLT1:JLT2,KLT1:KLT2,1:,1:&
     &)
              REAL(KIND=8) :: QLB(1:,ILB1:ILB2,JLB1:JLB2,KLB1:KLB2,1:,1:&
     &)
              INTEGER(KIND=4) :: ILO
              INTEGER(KIND=4) :: IHI
              INTEGER(KIND=4) :: JLO
              INTEGER(KIND=4) :: JHI
              INTEGER(KIND=4) :: KLO
              INTEGER(KIND=4) :: KHI
              INTEGER(KIND=4) :: LP1
              INTEGER(KIND=4) :: LP2
              INTEGER(KIND=4) :: LOR
              INTEGER(KIND=4) :: BP1
              INTEGER(KIND=4) :: BP2
              INTEGER(KIND=4) :: BOR
              REAL(KIND=8) :: EMF(1:,ILB1:ILB2,JLB1:JLB2,KLB1:KLB2)
              INTEGER(KIND=4) :: NGRID
            END SUBROUTINE CMP_MAG_FLX
          END INTERFACE 
        END MODULE CMP_MAG_FLX__genmod
