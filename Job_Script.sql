---JOB Creation
declare
  my_job number;
begin
  dbms_job.submit(job => my_job, 
    what => 'LOS_SP_EMAIL_DEV_APPR_SCH;',
    next_date => sysdate+1,
    interval => 'sysdate+1/24');
end;
/

----JOB Timimg Change

BEGIN
   DBMS_JOB.CHANGE(27,null,TRUNC(SYSDATE+1)+5/24,'SYSDATE+1/4');
END;
/

BEGIN
   DBMS_JOB.CHANGE([JOB],[WHAT],[NEXT_DATE],[INTERVAL]);
END;
/


begin
  dbms_job.broken(23, true);
  commit;
end;
/

---Drop a Job 
BEGIN
   DBMS_JOB.REMOVE(95302);
   COMMIT;
END; 


--JOB CREATION script

DECLARE
  X NUMBER;
BEGIN
  SYS.DBMS_JOB.SUBMIT
  ( job       => X 
   ,what      => 'begin 
                 ICICI_APS_SIT.SP_RC_DEDUPE_CHECK_CALL();
                 end;'
   ,next_date => sysdate
   ,interval  => 'SYSDATE + 1'
   ,no_parse  => FALSE
  );
  SYS.DBMS_OUTPUT.PUT_LINE('Job Number is: ' || to_char(x));
  SYS.DBMS_JOB.BROKEN
   (job    => X,
    broken => FALSE);
COMMIT;
END;
/


BEGIN
   DBMS_JOB.CHANGE(14144, null, sysdate+1/1140, 'sysdate+1/1140');	-- time interval of 1 minutes
   COMMIT;
END; 