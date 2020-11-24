SELECT  GETUTCDATE() as event_timestamp,
        wjr_name as metric,
	      datediff(minute, wjr_started,getdate()) as VALUE 
FROM	[dbo].[ws_wrk_job_run]
WHERE   wjr_status IN ('R', 'B');