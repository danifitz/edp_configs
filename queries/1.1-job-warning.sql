select  $__timeEpoch(a.wa_time_stamp) as event_timestamp,
 a.wa_job as metric,
count(1) as value
from   ws_wrk_audit_log a
where   $__timeFilter(a.wa_time_stamp)
and     wa_status='W'
group by a.wa_job, a.wa_time_stamp;