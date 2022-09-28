set serveroutput on;
DECLARE
stdmarks number(2);
passmark number(2)
BEGIN
stdmarks := 20;
passmark := 60;
if stdmarks > passmark then
dbms_output.put_line('Congatulations, go to the next level');
else
dbms_output.put_line('Sorry, you have to get' || to_char(passmark - stdmark) || 'to pass');
end if;
END;
/