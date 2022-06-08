BEGIN
   DBMS_JOB.CHANGE(14144, null, sysdate+1/1140, 'sysdate+1/1140');	-- time interval of 1 minutes
   COMMIT;
END; 