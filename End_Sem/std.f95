program Q5
	implicit none
	integer::i,j
	real, dimension(6)::array
	real::temp

	array=(/ 5,-5, 10, 15, 2, 25 /)
	
	do i=2,6
	do j=1,6-i
		if(array(j+1)<array(j)) then
			temp=array(j+1)
			array(j+1)=array(j)
			array(j)=temp
		end if	
		end do
	end do
	write(*,*) array(1),array(2)
end program Q5