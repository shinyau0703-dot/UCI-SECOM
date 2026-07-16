/* jenner-check bundle: sas/step2_balanced.sas from shinyau0703-dot/UCI-SECOM
   Source: sas/step2_balanced.sas (the SECOM_BALANCED build step)
   step2_balanced.sas consumes WORK.SECOM_CLEANED, the output of the repo's
   own step1_cleaned.sas (see the t001_step1_cleaned bundle in this same PR).
   Only the WORK.SECOM_CLEANED block below is added here: a small,
   deliberately imbalanced Label=1/-1 sample (2 v0/v589-style sensor columns
   plus Label) shaped like step1's real output, so step2's downsampling
   logic runs against realistic input without re-running all of step1.
   Everything from the "step2_balanced.sas from the repo" marker down is the
   repo's script, unchanged. */

data work.secom_cleaned;
  length Label 8;
  input Label v0 v589;
  datalines;
1 3030.93 82.31
1 2847.81 33.45
1 3017.50 71.58
1 3030.17 112.58
1 3111.93 84.43
-1 3039.66 66.30
-1 2989.82 79.80
-1 3012.56 47.14
-1 2792.24 63.26
-1 3093.75 84.35
-1 2954.46 38.71
-1 3070.07 291.80
-1 3055.66 21.06
-1 3017.39 48.48
-1 2986.28 39.62
-1 3055.54 71.01
-1 3021.61 45.70
-1 3018.57 48.21
-1 2829.84 22.62
-1 3005.64 65.77
-1 2851.68 70.50
-1 2988.39 0.00
-1 3038.57 368.89
-1 2983.24 117.76
;
run;

/* ---- everything below is sas/step2_balanced.sas from the repo, unchanged ---- */

/*=======SECOM_BALANCED=============*/
/* 計算兩類筆數 */
proc sql noprint;
select count(*) into :n1  from work.secom_cleaned where Label=1;
select count(*) into :n_1 from work.secom_cleaned where Label=-1;
quit;

/* 這裡假設 Label=1 為少數類 → 目標樣本數 = &n1 */
%let target=&n1;

/* 分成少數類 / 多數類 */
data pos neg;
set work.secom_cleaned;
if Label=1  then output pos;
else if Label=-1 then output neg;
run;

/* 對多數類做下抽樣到 &target 筆 */
proc surveyselect data=neg out=neg_samp
       method=srs
       sampsize=&target
       seed=12345;
run;

/* 合併成平衡後的資料 → SECOM_BALANCED */
data work.secom_balanced;
set pos neg_samp;
run;

/*平衡後的 Label 分佈 */
title "SECOM_BALANCED 的 Label 分佈";
proc freq data=work.secom_balanced;
tables Label;
run;
title;

proc print data=work.secom_balanced;
  var Label v0 v589;
run;
