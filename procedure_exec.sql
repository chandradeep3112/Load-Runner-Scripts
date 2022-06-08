DECLARE
ref_cur SYS_REFCURSOR;
REQUEST_ID NUMBER;
REQUEST_CODE VARCHAR2(20);
BEGIN
PKG_TECHFI_APS.STP_APS_LAS_REPORT_DETAILS ('7788966355','51802519',ref_cur);
LOOP
EXIT WHEN ref_cur%NOTFOUND;
FETCH ref_cur INTO REQUEST_ID,REQUEST_CODE;
DBMS_OUTPUT.PUT_LINE(REQUEST_ID||','||REQUEST_CODE);
END LOOP;
END;

***************************************

DECLARE
REQUEST_ID NUMBER:=7764;
BEGIN
PKG_ASK_APS.APS_AGREEMENT_DETAILS(REQUEST_ID);
END;

***************************************

set serveroutput on;
DECLARE
verrMsg varchar2(2000);
BEGIN
sp_imgc_dump(sysdate,verrMsg);
dbms_output.put_line('verrMsg: '||verrMsg);
END;
/