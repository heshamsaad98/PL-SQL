set serveroutput on;
BEGIN
for counter in reverse 1..10
loop
dbms_output.put_line('the counter reaches' || counter);
end loop;
END;