set serveroutput on;
declare
varEno emp.emno%type;
varEname emp.ename%type;
cursor curs_emp_data is select empno, ename from emp where deptno = 10;
begin
open curs_emp_data;
fetch curs_emp_data into varEno, varEname;
dbms_output.put_line('the employee number is' || to_char(varEno));
dbms_output.put_line('the employee name is' || varEname);
close curs_emp_data;
end;
/