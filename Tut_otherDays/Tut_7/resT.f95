subroutine Transform(s,rho_a)

	real, intent(in)  :: s              ! input
  	real, intent(out) :: rho_a			! output
	

	integer::i,j,k,n=19,m=2,myopenstatus,opnstat,myreadstatus,write_stat
	real::sum=0
	real, dimension(3)::rho,T
	real, dimension(2)::h

	real,dimension(19) :: a,f,lambda
    real, dimension(:,:), allocatable::a_f


	! rho=(/ 100,20,500 /)
	rho=(/ 500,500,500 /)
	h=(/ 60,20 /)

  	 open (unit=12, file="input_a_f.txt", status="old",action="read", position="rewind",iostat=myopenstatus)
	 if (myopenstatus > 0) stop "Cannot open input_a_f.txt file."
	
	 allocate(a_f(n,m))

	 do i = 1, n
  		read(12,*) a_f(i,:)
  	 end do

  	 a=a_f(:,1)
  	 f=a_f(:,2)

  	 do j=1,19

	  	 lambda(j)=10**(a(j)-LOG10(s))
		 T(size(rho))=rho(size(rho))

		 do k=size(rho),2,-1

			T(k-1)=(T(k)+rho(k-1)*tanh(lambda(j)*h(k-1)))/(1+(T(k)*tanh(lambda(j)*h(k-1)))/rho(k-1) )

		 end do

		 sum=sum+f(j)*T(1)

  	 end do

  	 rho_a=sum
  	 sum=0

end subroutine Transform




program DCvishnu

  integer::i,myopenstatus,opnstat,myreadstatus,write_stat
  real :: rhoa
  real, dimension(29)::s

  open (unit=12, file="input_s.txt", status="old",action="read", position="rewind",iostat=myopenstatus)
	 if (myopenstatus > 0) stop "Cannot open input_s.txt file"
	
	 do i = 1, 29
  		read(12,*,iostat=myreadstatus) s(i)
	 end do


		open(unit=10,file="output.txt",status="replace",action="write",position="append",iostat=opnstat)
		if(opnstat>0) stop "Error!! can not open file!"
		


  	do i=1,29

	  	call Transform(s(i),rhoa)


		write(10,'(f6.1,2x,f8.3)',iostat=write_stat) s(i),rhoa
		if(write_stat>0) stop "Error!! can not write to file!"

	end do

	close(10)
	close(12)

end program DCvishnu