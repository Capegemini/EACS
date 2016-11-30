/$INFA_ENV//infa_shared/SrcFiles/CDW2/ADJ/sourcefiles Daily '00:15:00' Zipped

infa_call_INPROGRESS <bteq_name/wrk_flow> BTEQ/INFORMTICA 
infa_call_FAILED <bteq_name/wrk_flow> BTEQ/INFORMTICA <LOG>
infa_call_COMPLETED <bteq_name/wrk_flow> BTEQ/INFORMTICA <LOG>


infa_call_INPROGRESS <bteq_name > BTEQ 
infa_call_FAILED <bteq_name > BTEQ <BTEQ_LOG>
infa_call_COMPLETED <bteq_name > BTEQ < BTEQ_LOG >


inf_call_file w_m_CDW2_ADJ_ADJUSTER_FEED_STG_DLY_LOAD    adjuster_bi_report.dat 

Arg1: Work FlowName
Arg2: File Name
Arg3: Path of the file
Arg4: Frequency of the file < Daily /Weekly/Hourly>
Arg5: Expected Time of File arrival
Arg6: Format of file <Zipped/csv/Txt>

DELETE FROM TVDW_VM.PROPERTY_GRP WHERE GRP_SRC_SYS_ID=1106;
Delete completed. 7 rows removed. 
Total elapsed time was 1 second.

MERGE INTO DIG_TRAFFIC_FW_CAMPAIGN TGT
Merge completed. 3043 rows affected.
Total elapsed time was 1 second.

INSERT INTO TVDW_VM.PROPERTY_GRP
Insert completed. No rows added. 
Total elapsed time was 1 second.

sed -n -e 's/^.*Rejecte//p'
sed -i -n '/DELETE\|UPDATE\|MERGE/,$p' count_fl_name1

sed '$n;h;N;/^\(.\).*\n\1/g;/\n/P;//!G;D'  count_fl_name1
Total elapsed time was 1 second.
Total elapsed time was 1 second.
DELETE FROM ADJUSTER_FEED_STG ;
Delete completed. 476901 rows removed. 
Total elapsed time was 1 second.
UPDATE ADJUSTER_FEED_STG ;
Update completed. 378375601 rows changed. 
Total elapsed time was 3 minutes and 58 seconds.
Total elapsed time was 1 second.

 perl -C -ne '$c = substr($_,0,8); print unless $c eq $l; $l = $c;' count_fl_name1
 
 echo 'Total elapsed time was 3 minutes and 58 seconds.' | grep -o -P '.{0,3}seconds' | sed -e 's/^[ \t]*//' |cut -d' ' -f1

 echo 'Total elapsed time was 3 minutes and 58 seconds.' | grep -o -P '.{0,3}minutes' | sed -e 's/^[ \t]*//' |cut -d' ' -f1
 echo 'Total elapsed time was 3 minutes and 58 seconds.' | grep -o -P '.{0,3}hour'|sed -e 's/^[ \t]*//'  | cut -d' ' -f1
