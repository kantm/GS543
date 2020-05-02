program Q6

	implicit none
	character::ch
	integer::i
	
	do i=90,65,-2

		if(i==70) cycle
		if(i==72) exit
		ch=achar(i)
		write(*,*) i,'',ch
	end do

end program Q6