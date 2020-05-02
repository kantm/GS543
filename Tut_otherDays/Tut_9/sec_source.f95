module mymodule

	contains
	
	real function volume(r)
		
		real, intent(in)::r
		real::pi
		pi=3.14
		volume=(4.0/3.0)*pi*(r**3)

	end function volume

	real function area(r)
		
		real, intent(in)::r
		real::pi
		pi=3.14
		area=4*pi*(r**2)

	end function area

	subroutine  display(V,S)
		
		real, intent(in):: V,S
		write(*,*) "Volume of sphere is : ", V
		write(*,*) "Surface area of sphere is : ", S

	end subroutine  display

end module mymodule