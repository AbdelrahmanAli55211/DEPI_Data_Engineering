--1
select D.Dname,D.Dnum,E.Fname+' '+E.Lname as 'Full Name'
from Departments D join Employee E
on D.MGRSSN=E.SSN

--2
select D.Dname,P.Pname
from Departments D inner join Project P
on D.Dnum=P.Dnum

--3
select D.*,E.Fname+' '+E.Lname as 'Full Name'
from Dependent D join Employee E
on D.ESSN =E.SSN

--4
select Pname,Pnumber,Plocation,City
from Project
where city in ('Cairo','Alex')

--5
select * from Project where Pname like 'a%'

--6
select * from Employee where Dno=30 and salary between 1000 and 2000

--7
select e.Fname+' '+e.Lname as 'Full Name' 
from Employee e inner join Works_for wf
on e.SSN=wf.ESSn and wf.Hours>=10 and e.Dno=10 inner join Project p on wf.Pno=p.Pnumber and p.Pname='AL Rabwah'

--8
select x.Fname,x.Lname,y.Fname,y.Lname
from Employee x,Employee y
where x.Superssn=y.SSN and y.Fname = 'Kamel' and y.Lname='Mohamed'

--9
select e.Fname+' ' +e.Lname as 'Full name',p.Pname
from Employee e join Works_for wf on e.SSN=wf.ESSn join Project p on wf.Pno=p.Pnumber 
order by p.Pname

--10
select p.Pnumber,d.Dname,e.Lname 
from Project p join Departments d on p.Dnum=d.Dnum and p.City='Cairo' join Employee e on e.SSN=d.MGRSSN

--11 if he wanted supervisors
select y.*
from Employee x, Employee y
where x.Superssn=y.SSN

--11 if he wanted department managers
select e.*
from Employee e inner join Departments d
on e.SSN=d.MGRSSN