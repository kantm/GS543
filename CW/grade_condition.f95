program grade

	real::marks
	write(*,*) "Enter Marks"
	read(*,*) marks

	if(marks>=90) then
		write(*,*) "Grade=AA"
	else if(marks>=80) then
		write(*,*) "Grade=AB"
	else if(marks>=70) then
		write(*,*) "Grade=BB"
	else if(marks>=60) then
		write(*,*) "Grade=BC"
	else if(marks>=50) then
		write(*,*) "Grade=CC"
	else if(marks>=40) then
		write(*,*) "Grade=CD"
	else
		write(*,*) "Grade=F"
	end if

end program grade