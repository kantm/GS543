program triangle

	integer::i,j

	do i=5,0,-1
		do j=0,5-i
			write(*,'(i2,2x)',advance="no") i+j
		end do
		write(*,*)
	end do

end program triangle