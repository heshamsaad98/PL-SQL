set serveroutput on;
SELECT empno, ename, deptno,
case deptno
when 10 then 'you are in accounting'
when 20 then 'you are in marketing'
when 30 then 'you are in sales'
else
'you are not assigned yet'
end
FROM emp;