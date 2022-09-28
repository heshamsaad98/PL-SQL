set serveroutput on;
DECLARE
counter number := 1;
BEGIN
loop
dbms_output.put_line(counter);
counter = counter + 1;
exit when(counter = 10);
end loop;
END;
/