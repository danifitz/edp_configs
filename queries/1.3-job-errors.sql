select  $__timeEpoch(a.wjr_started) as event_timestamp,
 a.wjr_name as metric,
count(1) as value
from   ws_wrk_job_run a
where   $__timeFilter(a.wjr_started)
and     wjr_status in ('E','F')
group by a.wjr_name, a.wjr_started;