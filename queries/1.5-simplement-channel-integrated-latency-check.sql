select  $__timeEpoch(vw_hvr_stats.last_updated) as event_timestamp, concat(chn_name,loc_name) as metric, metric_value
from [HUBDB_PROD].[dbo].[vw_hvr_stats] vw_hvr_stats
where metric='Integrate Latency Max'
and  $__timeFilter(vw_hvr_stats.last_updated)
order by last_updated;