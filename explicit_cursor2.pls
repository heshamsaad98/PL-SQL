set serveroutput on;
declare
cursor curs_emp_data is
select ename, empno, sal from emp where deptno in (20, 30);
varempdata curs_emp_data%rowtype;
begin
open curs_emp_data;
loop
fetch curs_emp_data into varempdata;
exit when(curs_emp_data%notfound)
dbms_output.put_line(varempdata.ename || ' ' || varempdata.sal);
end loop;
close curs_emp_data;
end;
/