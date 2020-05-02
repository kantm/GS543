program grade

	real::marks
	write(*,*) "Enter Marks"
	read(*,*) marks

	select case(marks)
			case(if((marks=>90).and.(marks<=100)))
				write(*,*) "Grade=AA"
			case(if(marks=>80))
				write(*,*) "Grade=AB"
			case(if(marks=>70))
				write(*,*) "Grade=BB"
			case(if(marks=>60))
				write(*,*) "Grade=BC"
			case(if(marks=>50))
				write(*,*) "Grade=CC"
			case(if(marks>40))
				write(*,*) "Grade=CD"
			case(0:40)
				write(*,*) "Grade=F"
			case default
				write(*,*) "Enter Marks b/w 0 to 100"
	end select

end program grade