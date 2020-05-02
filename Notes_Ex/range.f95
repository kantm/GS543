program range

integer::theta
real::r,v0,pi=3.14,g=-9.81

write(*,*) "Enter the initial velocity"
read(*,*) v0

do theta=5,85,5
	r=v0*v0*sin(2*theta*pi/180)/g
	r=-r
	write(*,*) "Theta=",theta,"		Range=",r
end do

end program range