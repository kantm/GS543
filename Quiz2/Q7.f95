program triangle
integer,dimension(:),allocatable::a
integer::i,j
do i=1,6
allocate(a(i))
do j=1,6
if (i==j) then
a(j)=5
if (i==j+1) then
a(j-1)=4
if (i==j+2) then
a(j-2)=3
if(i==j+3) then
a(j-3)=2
if(i==j+4) then
a(j-4)=1
if(i==j+5) then
a(j-5)=0
end if
end do
write(*,*)(a(k),k=1,i)
end do

end program triangle