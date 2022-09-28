create or replace trigger orders_audit after insert or update or delete
on orders
declare
v_user_name varchar2(20);
begin
select user into v_user_name from dual;
if inserting then
insert into auditor
values(v_user_name, 'inserting');
else if updating then
values(v_user_name, 'updating');
else if deleting then
values(v_user_name, 'deleting');
end if;
end;
/