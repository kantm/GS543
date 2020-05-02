program try

	integer::i,j
	real, dimension(8)::a=(/10.2,20.1,0.0,-10.1,30.6,40.5,50.6,20.2/)
	real, dimension(6)::x=(/0.1,0.2,0.3,0.4,0.5,0.6/)
	real, dimension(6)::f=(/1.7,1.92,1.94,1.97,2.214,2.32/)
	real, dimension(5)::diff
	real::max,min,mean,sum=0.0,temp,std_devi=0.0

	max=a(1)
	min=a(1)
	sum=a(1)

	do i=2,size(a)

		if( a(i)>max ) then
			max=a(i)
		end if
		if( a(i)<min ) then
			min=a(i)
		end if

		sum=sum+a(i)	

	end do

	mean=sum/size(a)
	write(*,*) max,min,mean

	do i=1,size(a)
		do j=1,size(a)-1

			if(a(j)>a(j+1)) then
				temp=a(j)
				a(j)=a(j+1)
				a(j+1)=temp
			end if

		end do
	end do	

	write(*,*) (a(i), i=1,size(a))

	do i=1,size(a)
		std_devi=std_devi+a(i)**2
	end do

	std_devi=(std_devi/size(a))-mean**2
	std_devi=sqrt(std_devi)

	write(*,*) std_devi

	do i=1,size(x)-1
		diff(i)=(f(i+1)-f(i))/(x(i+1)-x(i))
	end do

	write(*,*) diff

end program try