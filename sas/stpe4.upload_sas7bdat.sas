/* download .sas7bdat(SAS伺服器>主頁>export)*/
options dlcreatedir;             
libname export "~/export"; 
%put NOTE: EXPORT path = %sysfunc(pathname(export));


data export.secom;
  set secomlib.secom;
run;

data export.secom_cleaned;
  set secomlib.secom_cleaned;
run;

data export.secom_balanced;
  set secomlib.secom_balanced;
run;



