/*统计学校学生人数*/
SELECT DISTINCT(t1.school_id),t2.full_name,COUNT(t1.id) FROM htuser_new.student_info t1
left join school_info t2
on t1.school_id=t2.id
GROUP BY t1.school_id
ORDER BY COUNT(t1.id) desc