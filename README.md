# UCI-SECOM

## Environment

- Platform: SAS® Viya (Trial) – SAS® Studio (Engineer)  
- Version: Long-Term Support 2024.09  
- Usage: Practice end-to-end workflow on SAS Viya, including:
  - Data preparation in SAS Studio / CAS  
  - Modeling in Model Studio  
  - Reporting and visualization in Visual Analytics  

---

## Dataset

- Source: UCI Machine Learning Repository – SECOM Dataset  
- Context: Online process monitoring in semiconductor manufacturing  
- Structure:
  - Process data: 1,567 observations, ~590 continuous sensor features  
  - Label data: Final test result (Pass/Fail) and timestamp (Time) for each observation  

> In this project, SECOM is used as a **public, reproducible example dataset** for SAS Viya practice, not for formal manufacturing research.

---

## Project Objective

The main objective of this project is:

> Use the SECOM dataset to practice a complete “data-to-model” workflow on SAS Viya, rather than to optimize the best possible model.

Key tasks include:

- Import and manage data in SAS Studio / CAS  
- Data cleaning and feature engineering:
  - Rename sensor fields (0–589 → v0–v589)  
  - Convert and derive time-related features (Shift, Quarter, IsWeekend, DOW)  
  - Create cleaned dataset `SECOM_CLEANED` and class-balanced dataset `SECOM_BALANCED`  
- Build and compare classification models in Model Studio:
  - Logistic Regression, Decision Tree, Random Forest, Gradient Boosting, etc.  
  - Handle class imbalance and evaluate metrics (Accuracy, AUC, KS, Lift, F1, etc.)  
- Create Visual Analytics reports for data exploration and model results  
- Export logs, reports, and model artifacts, and organize them in a clear project folder structure.


[Kaggle link]
https://www.kaggle.com/code/christianmagnusingul/uci-secom-semiconductor-manufacturing-data-uci/notebook


![Process flowchart](docs/flowcharts/Process%20Flowchart.png)

```text
UCI-SECOM\
│  README.md
│  .gitignore
│
├─data\
│  ├─raw\
│  │      secom_train.csv
│  │      secom_labels.csv
│  │      secom_merged.csv
│  │
│  └─processed\
│         secom_cleaned.csv
│         secom_balanced.csv
│
├─sas\
│    step1_cleaned.sas
│    step2_balanced.sas
│    stpe3.upload.sas
│
├─notebooks\
│      DownloadData.ipynb
│
├─viya_exports\
│      SECOM_MODEL.zip
│      SECOM_VA.sasreportpkg.zip
│
├─results\
│  ├─figures\
│  │      Boxplot_v59_Shift.png
│  │      correlation matrix.png
│  │      Label_feature.png
│  │      v59plot.png
│  │      v64plot.png
│  │
│  ├─tables\
│  │      cumulative_lift_table.xlsx
│  │      roc_summary.xlsx
│  │      accuracy_table.xlsx
│  │      f1_by_class_table.xlsx
│  │      fit_statistics_table.xlsx
│  │      percentage_bar_chart.xlsx
│  │      variable_attributes_table.xlsx
│  │      model_comparison_table.xlsx
│  │
│  ├─reports\
│  │      reports_SECOM_MODEL.pdf
│  │      reports_SECOM_VA.pdf
│  │
│  └─logs\
│        SECOM_logs.log
│        SAS_logs.log
│        step1_cleaned_logs.log
│        step2_balanced_logs.log
│        stpe3.upload_logs.log
│        stpe4.upload_sas7bdat_logs.log
│ 
├─db\
│   import SQL.sql
│   PostgreSQL.md
│
└─docs\
   ├─screenshot\
   │     SAS model studio.pdf
   │     SAS STUDIO.pdf
   │     SAS visual Analytics.pdf
   │
   └─flowcharts\ 
         Process Flowchart.png

```






















