subroutine AMT(f,rho_a,phi)
	real, intent(in)  :: f              ! input
  	real, intent(out) :: rho_a,phi 		! output
	
	integer::i
	real::w,mu
	real, dimension(8)::rho=(/5,25,10,7500,10,7500,10,7500/)
	! real, dimension(8)::rho=(/100,100,100,100,100,100,100,100/)
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

	rho_a=(1/(w*mu))*(cabs(Z(1))**2)
	phi=(180/3.14)*atan(imag(Z(1))/real(Z(1)))

end subroutine AMT

program xx
  integer::i,myopenstatus,opnstat,myreadstatus,write_stat
  real :: rhoa, PHI
  real, dimension(29)::freq

  	 open (unit=12, file="input.txt", status="old",action="read", position="rewind",iostat=myopenstatus)
	 if (myopenstatus > 0) stop "Cannot open file."
	
	 do i = 1, 29
  		read(12,*,iostat=myreadstatus) freq(i)
	 end do
	
  	do i=1,29

	  	call AMT(freq(i),rhoa,PHI)

		open(unit=10,file="output.txt",status="old",action="write",position="append",iostat=opnstat)
		if(opnstat>0) stop "Error!! can not open file!"
		
		write(10,'(f6.1,2x,f8.3,2x,f8.3)',iostat=write_stat) freq(i),rhoa,PHI
		if(write_stat>0) stop "Error!! can not write to file!"

		close(10)
	end do

	close(12)

end program xx