create or replace package hr
is
type EmpRecType is Record(emp_id number, salary number);
function GetEnpCount(dno in number) return number;
function GetEmpname(empno in number) return varchar2;
procedure UpdateComm(empno in number, percent in number);
procedure UpdateComm(dno in number);
end;

create or replace package body hr
is
function GetEnpCount(dno in number) return number
is
empcount number;
begin
select count(*) into empcount from emp where deptno = dno;
return empcount;
end;
function GetEmpname(empno in number) return varchar2
as
empname varchar2(20);
begin 
select ename into empname from emp where emp.empno = empno;
return empname;
end;
procedure UpdateComm(empno in number, percent in number)
as
begin
update emp
set comm = sal * percent;
end;
procedure UpdateComm(dno in number)
as
begin
update emp
set comm = sal * 0.10
where deptno = dno;
end;
end;
/