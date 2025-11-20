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
