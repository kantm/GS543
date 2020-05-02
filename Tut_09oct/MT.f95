program sounding

integer::i
real::f=1000,w,mu
! real, dimension(8)::rho=(/5,25,10,7500,10,7500,10,7500/)
real, dimension(8)::rho=(/100,100,100,100,100,100,100,100/)
real, dimension(7)::h=(/0.5,3.5,25.0,70.0,10.0,70.0,10.0/)
complex, dimension(8)::Z
complex, dimension(7)::T,S
complex::k,j=(0,1)

mu=4*3.14E-7
w=2*3.14*f
k=sqrt(j*w*mu)
Z(8)=k*sqrt(rho(8))

do i=7,1,-1
	T(i)=k*sqrt(rho(i))*tanh(k*h(i)/sqrt(rho(i)))
	S(i)=(1/(k*sqrt(rho(i))))*tanh(k*h(i)/sqrt(rho(i)))
	Z(i)=(Z(i+1)+T(i))/(1+S(i)*Z(i+1))
end do

rhoa=(1/(w*mu))*(cabs(Z(1))**2)
phi=(180/3.14)*atan(imag(Z(1))/real(Z(1)))

write(*,*) rhoa,phi,Z(1)

end program sounding