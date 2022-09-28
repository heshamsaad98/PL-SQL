set serveroutput on;
BEGIN
DELETE FROM emp WHERE deptno = 40;
if (sql%notfound) then
dbms_output.put_line('no rows affected');
else
dbms_output.put_line('the query affected' || to_char(sql%rowcount));
end if;
END;