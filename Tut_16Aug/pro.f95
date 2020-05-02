program pro

! go to 100

! 100 continue

integer :: m,i
real :: p1p2=0.5,r1,r2,r3,r4,z=15.0,rho1=10.0,rho2=500.0,p,exp1,exp2,exp3,exp4,rho_app,k,sum=0.0
! real::c1c2
! c1c2=3000*2

real, dimension(3) :: c1c2

! c1c2 = (/1.5,2.0,3.0,4.0,6.0,8.0,10.0,15.0,20.0,25.0,30.0,40.0,50.0,60.0 /)
! c1c2 = (/80.0,100.0,120.0,140.0,160.0,180.0,200.0,250.0,300.0,350.0,400.0,500.0,600.0,700.0 /)
 c1c2 = (/ 800.0,900.0,1000.0 /)

c1c2=c1c2*2
k=(rho2-rho1)/(rho2+rho1)

do i=1,size(c1c2)

	r3=abs((c1c2(i)*0.5)+(p1p2*0.5))
	r2=r3
	r1=abs((c1c2(i)*0.5)-(p1p2*0.5))
	r4=r1

	p=1/(((1/r1)-(1/r2))-((1/r3)-(1/r4)))

	do m=1,45
		
		exp1=1/(sqrt(abs(r1*r1+4*m*m*z*z)))

		exp2=1/(sqrt(abs(r2*r2+4*m*m*z*z)))

		exp3=1/(sqrt(abs(r3*r3+4*m*m*z*z)))

		exp4=1/(sqrt(abs(r4*r4+4*m*m*z*z)))

		sum=sum+(k**m)*(exp1-exp2-exp3+exp4)

	end do

	rho_app=rho1*(1+2*p*sum)

	Print *, c1c2(i)*0.5 ,rho_app
	sum=0
end do

end program pro