set serveroutput on;
BEGIN
UPDATE emp
SET comm = sal * 0.025
WHERE deptno = 10;
if(sql%found) then
dbms_output.put_line('the query affected' || to_char(sql%rowcount));
end if
END;
/