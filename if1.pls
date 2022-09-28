set serveroutput on;
DECLARE
marks number(2) := 73;
BEGIN
stdmarks := 20;
passmark := 60;
if marks between 91 and 100 then
dbms_output.put_line('you got A grade');
elseif between 81 and 90 then
dbms_output.put_line('you got B grade');
elseif between 71 and 80 then
dbms_output.put_line('you got C grade');
elseif between 61 and 70 then
dbms_output.put_line('you got D grade');
else
dbms_output.put_line('you got F grade');
end if;
END;
/