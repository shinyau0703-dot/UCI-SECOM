/* jenner-check bundle: sas/step1_cleaned.sas from shinyau0703-dot/UCI-SECOM
   Source: sas/step1_cleaned.sas (the SECOM_CLEANED build step)
   Only the WORK.SECOM block below is added: 24 rows sampled from the repo's
   own data/raw/secom_merged.csv (20 of the 590 sensor columns, plus
   Pass/Fail and Time), inlined as DATALINES since the runner uploads only
   script text, no data files. Column name-literals ('0'n .. '589'n) match
   what options validvarname=any produces on the repo's real raw file.
   Everything from the "step1_cleaned.sas from the repo" marker down is the
   repo's script, unchanged. */

options validvarname=any;

data work.secom;
  informat 'Pass/Fail'n best8. Time $20.;
  input '0'n '1'n '2'n '3'n '4'n '5'n '6'n '7'n '8'n '9'n
        '50'n '100'n '150'n '200'n '300'n '400'n '500'n '550'n '588'n '589'n
        'Pass/Fail'n Time & $20.;
  datalines;
3030.93 2564.0 2187.7333 1411.1265 1.3602 100.0 97.6133 0.1242 1.5005 0.0162 624.3145 0.0002 4.271 10.3 0.0462 0.0 0.0 12.93 . . -1 19JUL2008:11:55:00
2847.81 2461.38 2202.7111 1010.4454 1.0032 100.0 104.3067 0.1225 1.497 -0.0077 631.6982 -0.0001 7.479 14.53 0.1367 0.0 908.2707 . 0.0032 33.4515 -1 01AUG2008:10:20:00
3017.5 2634.3 2183.4556 955.9073 1.1048 100.0 102.6978 0.1223 1.47 -0.0092 628.77 -0.0002 7.286 11.28 0.0621 0.0 466.0661 13.91 0.005 71.5753 -1 06AUG2008:03:22:00
3030.17 2559.12 2220.7111 1064.8446 0.9747 100.0 103.0567 0.1193 1.515 0.0031 627.1536 -0.0002 9.258 8.54 1.7664 0.0 583.3935 16.43 0.0072 112.5819 -1 12AUG2008:04:23:00
3111.93 2460.94 2176.6334 1272.409 1.3828 100.0 100.4622 0.1216 1.5183 -0.0161 627.2736 0.0002 9.419 22.9 0.0768 0.0 711.1111 12.82 0.0043 84.4337 -1 18AUG2008:12:06:00
3039.66 2393.78 2194.2889 1631.5293 1.5119 100.0 99.6367 0.1222 1.5176 -0.0049 625.9282 0.0003 2.861 20.0 0.0724 0.0 0.0 17.95 0.0025 66.2997 -1 20AUG2008:07:12:00
2989.82 2434.0 2180.0556 1031.0669 0.7565 100.0 104.7056 0.1226 1.5865 0.008 624.7991 0.0002 3.571 13.71 0.1062 0.0 0.0 17.13 0.0024 79.8045 -1 22AUG2008:00:44:00
3012.56 2534.62 2180.7 1159.3838 1.0177 100.0 98.9367 0.1222 1.411 -0.0016 652.4791 -0.0003 3.117 18.05 0.0459 0.0 0.0 19.89 0.0037 47.1425 -1 27AUG2008:17:14:00
2792.24 2533.76 2180.7 1159.3838 1.0177 100.0 98.9367 0.1222 1.546 -0.0149 624.1836 0.0001 2.894 19.37 0.1351 0.0 365.8052 19.02 0.006 63.2615 -1 29AUG2008:07:18:00
3093.75 2440.82 2160.6 1124.5821 1.5257 100.0 98.7122 0.1246 1.5859 0.0286 633.7773 0.0004 7.827 17.0 0.0898 0.0 0.0 . 0.0101 84.3454 -1 30AUG2008:14:37:00
2954.46 2449.48 2236.0667 1680.1825 1.4834 100.0 98.6889 0.1221 1.5089 -0.0131 639.5664 -0.0005 10.488 18.84 0.0745 0.0 552.0295 18.05 0.004 38.7106 -1 02SEP2008:01:36:00
3070.07 2459.22 2216.5111 871.2526 1.2366 100.0 107.4867 0.1194 1.4125 -0.0199 625.6691 -0.0005 11.13 19.3 0.1345 0.0 0.0 6.11 0.0065 291.804 -1 03SEP2008:14:29:00
3055.66 2625.2 2211.7222 1335.4837 1.3922 100.0 100.9256 0.1232 1.342 0.0008 620.6582 0.0002 8.383 11.21 0.1305 0.0 509.0909 15.99 0.003 21.0599 -1 11SEP2008:05:20:00
3017.39 2544.64 2246.5778 1963.8016 1.1665 100.0 96.7089 0.1209 1.4959 0.0137 634.1055 0.0 7.286 21.8 0.0693 0.0 437.8457 13.3 0.0042 48.4818 -1 14SEP2008:23:00:00
2986.28 2483.71 2200.9889 1054.524 1.383 100.0 100.18 0.1201 1.5794 -0.0034 630.7427 -0.0002 2.037 16.82 0.1212 0.0 814.1026 16.23 0.0038 39.6224 -1 19SEP2008:11:54:00
3055.54 2508.88 2168.7333 999.5929 1.3739 100.0 104.8544 0.1217 1.4461 0.0196 627.8464 0.0001 5.185 21.25 0.1178 0.0 610.0719 18.97 0.0053 71.0108 -1 21SEP2008:04:49:00
3021.61 2440.29 2227.2222 2043.5876 1.1892 100.0 95.5267 0.1253 1.5335 -0.0083 630.7145 0.0002 11.468 27.89 0.1314 0.0 328.3388 16.23 0.0074 45.7019 -1 23SEP2008:18:36:00
3018.57 2500.01 2137.6111 950.572 0.9199 100.0 105.1889 0.1251 1.3384 0.0336 631.2636 -0.001 7.374 18.79 0.0713 0.0 900.3058 15.06 0.0049 48.2132 -1 26SEP2008:15:06:00
2829.84 2595.7 2168.7 895.5849 0.8484 100.0 108.0122 0.1241 1.3548 -0.0061 632.22 -0.0003 6.37 25.69 0.1561 0.0 775.7576 14.53 0.0064 22.6231 -1 29SEP2008:04:47:00
3005.64 2522.4 2173.4889 1145.797 0.9402 100.0 104.0556 0.1247 1.4441 -0.0021 628.7682 0.0003 4.832 20.74 0.0496 0.0 0.0 10.9 0.0101 65.7689 -1 02OCT2008:08:24:00
2851.68 2503.48 2162.1333 998.9095 0.8826 100.0 104.9722 0.1246 1.5095 0.0097 635.26 -0.0007 8.352 16.29 0.0771 0.0 0.0 22.41 0.0043 70.4993 -1 04OCT2008:20:39:00
2988.39 2493.72 2206.4 982.5452 1.1853 100.0 116.8167 0.1228 1.5279 -0.0094 633.1627 0.0002 4.269 16.41 0.1765 0.0 0.0 11.55 0.0039 0.0 1 06OCT2008:15:00:00
3038.57 2380.39 2205.5 1287.3538 2.3842 100.0 111.7644 0.1241 1.4855 -0.0034 648.4855 0.0001 6.933 13.96 0.1073 0.0 0.0 14.53 0.0055 368.8936 -1 08OCT2008:18:22:00
2983.24 2459.97 2187.9889 1096.379 0.9065 100.0 97.6567 0.1221 1.3573 -0.006 642.1627 0.0002 5.813 18.8 0.1569 0.0 0.0 11.82 0.0047 117.7603 -1 14OCT2008:00:35:00
;
run;

/* ---- everything below is sas/step1_cleaned.sas from the repo, unchanged ---- */

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

proc print data=work.secom_cleaned(obs=10);
  var Label Shift Quarter DOW IsWeekend v0 v589;
run;
