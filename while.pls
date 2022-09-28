set serveroutput on;
DECLARE
counter number := 1;
BEGIN
while(counter <= 5)
loop
dbms_output.put_line('Hello');
counter := counter + 1;
end loop;
END;
/