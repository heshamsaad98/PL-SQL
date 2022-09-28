set serveroutput on;
DECLARE
salary number := 5000;
job varchar2(10) := 'clerck';
BEGIN
if salary > 4000 and job <> 'Manager' then
dbms_output.put_line('that is too high salary');
else
dbms_output.put_line('that is suitable salary');
end if;
END;
/