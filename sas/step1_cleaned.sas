proc contents data=work.secom out=_v0 noprint;
run;
/*=======SECOM_CLEANED=============*/
/*修改欄位名稱(0–589->v0–v589/Labels)*/
data _v_rename;
set _v0;
num=input(name,??best12.);
if type=1 and 0<=num<=589 then do;
  old=cats("'",name,"'n");
  new=cats('v',strip(name));
  rename_spec=cats(old,'=',new);
  output;
end;
run;

proc sql noprint;
select rename_spec into :rename_list separated by ' '
from _v_rename
order by num;
quit;

data _s;
set work.secom(rename=(&rename_list));

Label='Pass/Fail'n;
drop 'Pass/Fail'n;

/*前處理→datetime/衍生欄位*/
length Time_dt 8;  /*修改日期格式*/
if vtype(Time)='C' then Time_dt=input(strip(Time),anydtdtm.);
else if vtype(Time)='N' then Time_dt=Time;
format Time_dt datetime20.;

Date_part=datepart(Time_dt);
Hour_part=hour(Time_dt);
Quarter_num=qtr(Date_part);
DOW_num=weekday(Date_part);

length Shift $2 Quarter $2 IsWeekend $1 DOW $3;

/* 班別：S1=日班(8–15), S2=小夜(16–23), S3=大夜(0–7) */
if 8<=Hour_part<16 then Shift='S1';
else if 16<=Hour_part<24 then Shift='S2';
else Shift='S3';

/* 季別：Q1–Q4 */
if 1<=Quarter_num<=4 then Quarter=cats('Q',Quarter_num);

/* 星期：D1–D7 */
if 1<=DOW_num<=7 then DOW=cats('D',DOW_num);

/* 是否週末：1=週末(六日), 0=平日 */
if DOW_num in(1,7) then IsWeekend='1';
else IsWeekend='0';

/* 清掉中間用不到的欄位；Time_dt 取代 Time */
drop Time Date_part Hour_part Quarter_num DOW_num;
rename Time_dt=Time;
run;

/* 抓 v0–v589 的變數清單，準備補缺失 */
proc contents data=_s out=_v2 noprint;
run;

data _v2;
set _v2;
if substr(name,1,1)='v' then do;
  num=input(substr(name,2),??best12.);
  if 0<=num<=589 then output;
end;
run;

proc sql noprint;
select name into :sensor_list separated by ' '
from _v2
order by num;
quit;

/* 對 v0–v589 用中位數補缺失 → SECOM_CLEANED */
proc stdize data=_s out=work.secom_cleaned method=median reponly;
var &sensor_list;
run;

/* 清理後的 Label 分佈 */
title "SECOM_CLEANED 的 Label 分佈";
proc freq data=work.secom_cleaned;
tables Label;
run;
title;

