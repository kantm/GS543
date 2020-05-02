program small

	real::sm1,sm2
	real, dimension(6)::data
	integer::i

	data=(/ 5,2,8,-5,3,7 /)

	do i=1,6

		if(data(i)>data(i+1)) then
			cycle
		else if(data(i)>data(i+2)) then
			cycle
		else if(data(i)>data(i+3)) then
			cycle
		else if(data(i)>data(i+4)) then
			cycle
		else if(data(i)>data(i+5)) then
			cycle
		else 
			sm1=data(i)
		exit

		end if

	end do

	do i=1,6

		if (data(i)==sm1) then
			cycle
		else if(data(i)>data(i+1)) then
			cycle
		else if(data(i)>data(i+2)) then
			cycle
		else if(data(i)>data(i+3)) then
			cycle
		else if(data(i)>data(i+4)) then
			cycle
		else if(data(i)>data(i+5)) then
			cycle
		else 
			sm2=data(i)
		exit

		end if

	end do

	write(*,*) sm1,sm2
end program small