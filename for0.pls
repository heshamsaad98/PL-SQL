set serveroutput on;
BEGIN
for counter in 1..10
loop
dbms_output.put_line('the counter reaches' || counter);
end loop;
END;