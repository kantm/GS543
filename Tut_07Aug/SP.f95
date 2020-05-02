program sheetSP

real::x0=0,h=30,a=10,alpha=45,k=40
real::num1,num2,deno1,deno2

real, dimension(13) :: x, V
x = (/ -500,-400,-300,-200,-100,-50,0,50,100,200,300,400,500 /)

do i=1,13
	
	num1=((x(i)-x0)-a*cos(alpha*3.14/180))*((x(i)-x0)-a*cos(alpha*3.14/180))
	num2=(h-a*sin(alpha*3.14/180))*(h-a*sin(alpha*3.14/180))
	deno1=((x(i)-x0)+a*cos(alpha*3.14/180))*((x(i)-x0)+a*cos(alpha*3.14/180))
	deno2=(h+a*sin(alpha*3.14/180))*(h+a*sin(alpha*3.14/180))

	V(i)=k*LOG((num1+num2)/(deno1+deno2))
	Print *, V(i)

end do	

end program sheetSP