program check

  integer::i,j,k,n=19,m=2,myopenstatus,opnstat,myreadstatus,write_stat
  real :: rhoa
  real,dimension(19) :: c1
  real, dimension(:,:), allocatable::a_f

  	 open (unit=12, file="a_and_f.txt", status="old",action="read", position="rewind",iostat=myopenstatus)
	 if (myopenstatus > 0) stop "Cannot open file."
	
	 allocate(a_f(n,m))

	 do i = 1, n
  		read(12,*) a_f(i,:)
  		
	 end do

	 c1=a_f(:,1)
	
	write(*,*) c1

end program check