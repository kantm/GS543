program tut

integer :: m,i
real :: p1p2=0.5,r1,r2,r3,r4,z=15.0,rho1=10.0,rho2=500.0,p,exp1,exp2,exp3,exp4,rho_app,k,sum=0.0
real::c1c2

c1c2=1000*2
k=(rho2-rho1)/(rho2+rho1)

	r3=abs((c1c2*0.5)+(p1p2*0.5))
	r2=r3
	r1=abs((c1c2*0.5)-(p1p2*0.5))
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

	Print *, c1c2*0.5 ,rho_app

end program tut