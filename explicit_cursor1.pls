set serveroutput on;
declare
cursor curs_emp_data is select empno, ename, sal from emp where deptno = 10;
varEmpData curs_emp_data %rowtype;
begin
open curs_emp_data;
fetch varEmpData;
dbms_output.put_line('the employee number is' || varEmpData.empno);
dbms_output.put_line('the employee name is' || varEmpData.ename);
dbms_output.put_line('the employee name is' || varEmpData.sal);
close curs_emp_data;
end;
/