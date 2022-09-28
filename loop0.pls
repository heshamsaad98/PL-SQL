set serveroutput on;
DECLARE
counter number := 0;
BEGIN
loop
dbms_output.put_line('hello);
counter = counter + 1;
if counter = 5 then
exit
end if;
end loop;
end;
/