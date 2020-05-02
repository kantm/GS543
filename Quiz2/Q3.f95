program xyz

integer,dimension(5)::nums
integer::i=1
nums=0

do
	if(i==5) exit

	if(mod(i,2)==0) then
		nums(i)=99
	else
		nums(i)=i
	end if
	i=i+1
end do

write(*,*) (nums(i), i=1,5)


end program xyz