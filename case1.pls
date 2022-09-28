set serveroutput on;
DECLARE
v_mark number := 85;
v_level number := 3;
v_major char(15) := 'SW Engineering';
BEGIN
case
when v_mark between 91 and 100 then dbms_output.put_line('you got A');
when v_level = 4 then dbms_output.put_line('you are in second year');
when v_major = 'Information Systems' then dbms_output.put_line('you are an analyst');
else
dbms_output.put_line('non of the conditions is true');
end case;
END;
/