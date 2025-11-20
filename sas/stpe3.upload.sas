/* WORK.SECOM_CLEANED 上傳到 CASUSER(Data Manager看得到) */
cas mysess;

proc casutil sessref=mysess;
 droptable casdata="SECOM_CLEANED" incaslib="CASUSER" quiet;
 load data=WORK.SECOM_CLEANED
      outcaslib="CASUSER"
      casout="SECOM_CLEANED"
      promote;
quit;

/* WORK.SECOM_BALANCED 上傳到 CASUSER(Data Manager看得到) */
proc casutil sessref=mysess;
 droptable casdata="SECOM_BALANCED" incaslib="CASUSER" quiet;
 load data=WORK.SECOM_BALANCED
      outcaslib="CASUSER"
      casout="SECOM_BALANCED"
      promote;
quit;
