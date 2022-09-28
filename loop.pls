set serveroutput on;
DECLARE
counter number := 0;
BEGIN
loop
dbms_output.put_line('hello');
counter := counter+1;
exit when(conter = 5);
end loop;
end;
/