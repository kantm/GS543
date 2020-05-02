program transpose

	integer::i,j
	integer, dimension(3,4)::A
	integer, dimension(4,3)::B

	A(1,1)=1
	A(1,2)=4
	A(1,3)=7
	A(1,4)=10

	A(2,1)=2
	A(2,2)=5
	A(2,3)=8
	A(2,4)=11

	A(3,1)=3
	A(3,2)=6
	A(3,3)=9
	A(3,4)=12

	do i=1,4
		do j=1,3
			B(i,j)=A(j,i)
		end do
	end do

	do i=1,4
		write(*,*) (B(i,j), j=1,3)
	end do
end program transpose