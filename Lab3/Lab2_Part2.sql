--1
select * from Employee

--2
select Fname,Lname,Salary,Dno
from Employee

--3
select Pname,Plocation,Dnum
from Project

--4
select Fname+' '+Lname as 'Full name',(10.0/100)*salary*12 as 'ANNUAL COMM'
from Employee

--5
select SSN,Fname+' '+Lname as 'Full name'
from Employee
where salary>1000;

--6
select SSN,Fname+' '+Lname as 'Full name',salary*12
from Employee
where salary*12>10000;

--7
select Fname+' '+Lname as 'Full name',Salary
from Employee
where sex='F'

--8
select Dnum,Dname
from Departments
where MGRSSN=968574

--9
select Pnumber,Plocation,Pname
from Project
where Dnum=10