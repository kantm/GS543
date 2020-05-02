program T_3

integer::opnstat,write_stat
real::x,v1,v2,v3,x0=0,h=30,a=10,alpha,k=40,x1=100,z1=10,x2=-10,z2=40,l=20
character::file_name="sanjay.txt"
	alpha=3.14/2
	th=al*3
	xb=x1
	z=z1

open(unit=10,file="sanjay.txt",status="replace",action="write",position="rewind",iostat=opnstat)
if(opnstat>0) stop "Error!! can not open file!"

x=-500
do while(x<=500)

	num1=((x-xo)-a*cos(alpha))**2+(h-a*sin(alpha))**2
	den1=((x-xo)+a*cos(alpha))**2+(h+a*sin(alpha))**2
	v1=k*log(num1/den1)

	num2=(x-xb)**2+z**2
	den2=((x-(xb+l*cos(theta)))**2+(z+l*sin(theta))**2)
	v2=k*log(num2/den2)

	num3=((x-x1)**2+z1**2)
	den3=((x-x2)**2+z2**2)
	v3=k*log(num3/den3)

	write(10,'(f6.1,2x,f8.3,2x,f8.3,2x,f8.3)',iostat=write_stat) x,v1,v2,v3
	if(write_stat>0) stop "Error!! can not write to file!"


	x=x+10
end do

close(10)

end program T_3
