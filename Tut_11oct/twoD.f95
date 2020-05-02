program twoD

! real A(2,3),B(3,3),C(2,4),D(2,4),Z(2,4)

 real, dimension(2,3)::A
 A=reshape((/ 1,4,2,5,3,6 /), shape(A))

 write(*,*) A

end program twoD