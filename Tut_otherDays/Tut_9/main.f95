program sphere
	
	use mymodule
	real::r,S,V

	write(*,*) "Enter the radius: "
	read(*,*) r

	V=volume(r)
	S=area(r)
	call display(V,S)

end program sphere