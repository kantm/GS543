program triangle

integer::i,j

do i=1,6

	do j=1,i
		write(*,'(i1,2x)',advance="no") j
	end do

	write(*,*)

end do

end program triangle