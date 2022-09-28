create or replace trigger orders_a_insert after insert
on orders for each row
begin
update inventory
set available_qty = available_qty - :new.quantity
where item_no = :new.item_no;
end;
/