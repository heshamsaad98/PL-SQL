create or replace trigger orders_b_insert before insert
on orders for each row
begin
:new.total_cost := :new.quantity * :new.cost_per_unit;
:new.create_date := sysdate;
end;
/