program dateFormatter

	! declare variables
		implicit none
		integer :: month, day, year
		integer :: a, m, y, d
		character(9) :: amonth, day_of_week
	
	! ----------
	! display initial header
	
		write (*,*) "Date Formatting Example"
	
	! prompt for month, day, and year
		write (*,'(a)',advance="no") "Date (month, day, year):"
	
	! read month, day, and year
		read (*,*) month, day, year
	
	! ----------
	! display formatted numeric month/day/year
		write (*,*) "----------------------------------------"
		write (*,*) "Input Date: "
		write (*,'(5x, i2.2, a, i2.2, a, i4)') month, "/", day, "/", year

	! ----------
	! calculate day of week
		a = (14 - month) / 12
		y = year - a
		m = month + 12 * a - 2
		d = mod ( (day + y + y/4 - y/100 + y/400 + (31*m/12)), 7)

	! ----------
	! convert day-of-week integer to day-of-week string
		select case (d)
			case (0)
				day_of_week = "Sunday "
			case (1)
				day_of_week = "Monday "
			case (2)
				day_of_week = "Tuesday "
			case (3)
				day_of_week = "Wednesday"
			case (4)
				day_of_week = "Thursday "
			case (5)
				day_of_week = "Friday "
			case (6)
				day_of_week = "Saturday "
		end select

	! ----------
	! convert month (1-12) to string
		select case (month)
			case (1)
				amonth = "January "
			case (2)
				amonth = "February "
			case (3)
				amonth = "March "
			case (4)
				amonth = "April "
			case (5)
				amonth = "May "
			case (6)
				amonth = "June "
			case (7)
				amonth = "July "
			case (8)
				amonth = "August "
			case (9)
				amonth = "September"
			case (10)
				amonth = "October "
			case (11)
				amonth = "November "
			case (12)
				amonth = "December "
		end select
	
	! ----------
	! display formatted string for day, month, and year
		write (*,'(/a)') "Formatted Date:"
		write (*,'(5x, a, a, a, 1x, i2.2, a, i4/)') &
		trim(day_of_week), ", ", trim(amonth), &
		day, ", ", year

end program dateFormatter