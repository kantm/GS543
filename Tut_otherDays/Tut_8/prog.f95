program main

	type class
		character(50) :: name
		real :: score
		character(1) :: grade
	end type class

	type (class), dimension(50) :: student
	integer::count
	real::sum=0

		call read_info(student,count)
		call assign_grade(student,count)

		avg= average(student,count)
		write(*,'(/,a,f5.1)') "Class average=", avg

		call disp_info(student,count)


contains
!********************************* starts subroutine read_info **************s******************************
	subroutine read_info(student,count)
		
		type(class), dimension(50), intent(inout) :: student
		integer, intent(out)::count
		character(60)::tmp_name
		real::tmp_score
		count=0

		do
			write(*,'(a)',advance="no") "Enter student name (max. 50 characters) :"
			read(*,'(a50)') tmp_name
			if( len_trim(tmp_name) == 0) exit

			write(*,*) "Enter student's score (between 0.0 & 100.0) :"
			read(*,*) tmp_score
			if((tmp_score<0).and.(tmp_score>100)) exit
			
			count=count+1
			student(count)%name=tmp_name
			student(count)%score=tmp_score

		end do

		return

	end subroutine read_info
!********************************* ends subroutine read_info ***********************************************


!********************************* starts subroutine assign_grade ******************************************
	subroutine assign_grade(student,count)
		
		integer, intent(in)::count
		type(class), dimension(50), intent(inout) :: student
		character(1)::tmp_grade
		integer::i

		do i=1,count
			
			select case (nint(student(i)%score))
				case (90:)
					student(i)%grade="A"
				case (80:89)
					student(i)%grade="B"
				case (70:79)
					student(i)%grade="C"
				case (60:69)
					student(i)%grade="D"			
				case (:59)
					student(i)%grade="F"
			end select

		end do

		return

	end subroutine assign_grade
!********************************* ends subroutine assign_grade ********************************************


!********************************* starts function average *************************************************
	real function average(student,count)
		
		integer, intent(in)::count
		type(class), dimension(50), intent(in) :: student
		integer::i

		do i=1,count
			sum=sum+student(i)%score
		end do

		average=sum/real(count)
		return

	end function average
!********************************* ends function average ***************************************************


!********************************* starts subrotine disp_info *************************************************
	subroutine disp_info(student,count)

		integer, intent(in)::count
		type(class), dimension(50), intent(inout) :: student
		integer::i

		do i=1,count

			write(*,*) student(i)%name, student(i)%score, student(i)%grade

		end do

	end subroutine disp_info
!********************************* ends subrotine disp_info ***************************************************

	end program main

