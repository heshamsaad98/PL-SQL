set serveroutput on;
DECLARE
varEno number;
varEname varchar2(50);
CURSOR curs_emp_data IS
SELECT empno, ename FROM emp
WHERE deptno = 10;
BEGIN
OPEN curs_emp_data ;
FETCH curs_emp_data INTO varEno, varEname;
dbms_output.put_line('the employee number is' || to_char(varEno));
dbms_output.put_line('the employee name is' || varEname);
CLOSE curs_emp_data;
END;
/