select  $__timeEpoch(last_updated),
     concat(chn_name,loc_name) as metric,
     metric_value
     from [HUBDB_PROD].[dbo].[vw_hvr_stats]
     where metric='Capture Latency Max'
      and  $__timeFilter(last_updated)
     order by last_updated
