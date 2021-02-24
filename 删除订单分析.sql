/*
SELECT * from htorder.s_order_log
SELECT * from htorder.s_horder
SELECT * from htorder.snapshot_struct
SELECT * from htorder.s_print_info
*/

SELECT
sh.display_id as '订单号',
sol.operator_name as '操作人',
sol.operation as '状态变更',
sol.description as '变更描述',
sol.create_date as '时间',
spi.print_type as '打印方式',
ss.exercise_input_status as '录题进度',
spi.school_id as '学校id',
spi.school_name as '学校名称',
spo.operator_name as '下单人'
from 
htorder.s_order_log sol,
htorder.s_horder sh,
htorder.snapshot_struct ss,
htorder.s_print_info spi,
htorder.s_parent_order spo
WHERE
sh.id = sol.order_id
and
sh.order_status>=805
and
sol.order_status=916
and
sh.id = spi.order_id
and
spi.print_type=11
and
sh.display_id = ss.display_order_id
and
ss.exercise_input_status>20
and
sh.parent_order_id=spo.id
and
spi.school_id not in(10236640,10236667,10236568,10223031,10236585)
ORDER BY
spi.school_id