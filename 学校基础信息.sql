SELECT
	t1.province_id as '省份id',
    t2.name as '省份名称',
    t1.id as '学校id',
    t1.full_name as '学校名称',
    t1.is_live_sign '是否开通直播',
    t1.is_open_hk_exercise_repository as '是否开通会课题库',
    t1.is_open_school_based_exercise_repository as '是否开通校本题库',
    t1.is_open_school_work as '是否开通校本作业',
    t1.is_open_push_report as '是否开通推送报告',
    t1.is_push_report_contain_rank as '推送报告是否包含排名',
	t1.is_open_customized_report as '是否开通定制报告'
FROM
    htuser_new.school_info t1,
    htuser_new.geography_region_info t2
WHERE
	t1.province_id = t2.id
and
    t1.is_show=1
and
	t1.is_deleted=0