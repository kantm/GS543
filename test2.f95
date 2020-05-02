PROGRAM T

	logical::dooropen=.true.,windowopen=.false.
	integer::month=12,a,var1=42,var2=123,var3=4567
	real::num1=4.5,num2=12.1,num3=2145.5713
	character(20)::mon="December"

!	write(*,'(f10.4,f10.4,f10.4)') num1,num2,num3

!	write(*,'(a,2x,a,t20,a)',advance='no') "x","y","z"

!	write(*,'(l3,2x,l3)') dooropen,windowopen
	a=(14-month)/12

	mon="May,""I"" love"
!	write(*,*) mon
! write(*,'(i5,i5,i5)') var1,var2,var3
! write(*,'(i6.4)') var1
write(*,*) mon

END PROGRAM T