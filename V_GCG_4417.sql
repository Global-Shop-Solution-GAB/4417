Create view v_GCG_4417 AS
(select order_no + '-'+ order_line as line, order_no, order_line, job, suffix from Order_to_wo
where line not in (select order_no + '-'+ order_line from cost_goods_sold)
union
select order_no + '-'+ order_line as line, order_no, order_line, WO as job, suffix from cost_goods_sold
)