set serveroutput on;
create or replace procedure update_commissions
is
cursor curs_get_emp_data is select empno, sal, job from emp
where deptno = 10;
var_emp_data curs_get_emp_data%rowtype;
comval number;
begin
open curs_get_emp_data;
loop
fetch curs_get_emp_data into var_emp_data;
exit when(var_emp_data%notfound);
if var_emp_data.job = 'Manager' then
comval = var_emp_data.sal * 0.10;
else if  var_emp_data.job = 'SALESMAN' then
comval = var_emp_data.sal * 0.5;
else
comval = var_emp_data.sal * 0.2;
end if;
update emp
set comm = comval where empno = var_emp_data.empno;
end loop
close curs_get_emp_data;
end update_commissions;
/