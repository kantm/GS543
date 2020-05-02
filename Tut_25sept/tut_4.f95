program T_4

integer::opnstat,write_stat,i
real::v1,v2,v3,x0=0,h=30,a=10,alpha,k=40,x1=100,z1=10,x2=-10,z2=40,l=20
character::file_name="vishnu.txt"

! real, dimension(11)::x=(/0,10,20,30,40,50,60,70,80,90,100/)

! real, dimension(21)::x
! x(1)=-500
! do i=2,21
! 	x(i)=x(i-1)+50
! end do

real, dimension(21)::x = (/ -500,-450,-400,-350,-300,-250,-200,-150,-100,-50,0,50,100,150,200,250,300,350,400,450,500 /)

	alpha=3.14/2
	th=al*3
	xb=x1
	z=z1

open(unit=10,file="vishnu.txt",status="replace",action="write",position="rewind",iostat=opnstat)
if(opnstat>0) stop "Error!! can not open file!"


do i=1,21

	num1=((x(i)-xo)-a*cos(alpha))**2+(h-a*sin(alpha))**2
	den1=((x(i)-xo)+a*cos(alpha))**2+(h+a*sin(alpha))**2
	v1=k*log(num1/den1)

	num2=(x(i)-xb)**2+z**2
	den2=((x(i)-(xb+l*cos(theta)))**2+(z+l*sin(theta))**2)
	v2=k*log(num2/den2)

	num3=((x(i)-x1)**2+z1**2)
	den3=((x(i)-x2)**2+z2**2)
	v3=k*log(num3/den3)

	write(10,'(f6.1,2x,f8.3,2x,f8.3,2x,f8.3)',iostat=write_stat) x(i),v1,v2,v3
	if(write_stat>0) stop "Error!! can not write to file!"

end do

close(10)

end program T_4