set serveroutput on;
DECLARE
v_mark number := 90;
BEGIN
case v_mark
when 95 then dbms_output.put_line('you got A');
when 90 then dbms_output.put_line('you got B');
when 85 then dbms_output.put_line('you got C');
else
dbms_output.put_line('you got C');
end case;
END;
/