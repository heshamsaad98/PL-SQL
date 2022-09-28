set serveroutput on;
DECLAER
var1 number;
var2 number;
result number;
BEGIN
var1 := 10;
var2 := 20;
result := var1 + var2;
dbms_output.put_line(result);
END;
/