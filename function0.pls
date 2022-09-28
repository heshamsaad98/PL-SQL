set serveroutput on;
create or replace function service_years(hdate in date, weeks out number) return number
is
years number;
begin
years := trunc(months_between(sysdate, hdate) / 12, 0);
weeks := trunc(months_between(sysdate, hdate) * 4, 0);
return years;
end;
/