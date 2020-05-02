program h

 integer::opnstat,writestat,answer=42
 real::pi=3.14159
 character(15)::message="Fortran Example"
 open(unit=14,file="temp.txt",status="replace",action="write",position="rewind",iostat=opnstat)
 if(opnstat>0) stop "Error, can not open file"
 write(14,'(a,3/,i5/,f7.5)',iostat=writestat) message,answer,pi
 close(14)

! logical::a=.true.
! write(*,*) .not.a

end program h
