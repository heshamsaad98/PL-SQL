set serveroutput on;
BEGIN
for counter in 1..5
loop
dbms_output.put_line('hello');
end loop;
END;