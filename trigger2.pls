create or replace trigger orders_b_delete befor delete
on orders for each row
declare
v_days number;
begin
select floor(sysdate - :old.create_date) into v_days
from dual;
if(v_days > 2) then
raise_application_error(-20007, 'orders can be cancelled within only 2 days');
else
update inventory
set available_qty = available_qty + :old.quantity
where item_no = :old.item_no;
end if;
end;
/