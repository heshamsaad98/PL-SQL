set serveroutput on;
DECLARE
v_mark number := 83;
BEGIN
case
when v_mark between 91 and 100 then dbms_outbut.put_line('A');
when v_mark between 81 and 90 then dbms_outbut.put_line('B');
when v_mark between 71 and 80 then dbms_outbut.put_line('C');
else
dbms_outbut.put_line('F');
end case;
END;
/