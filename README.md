# UCI-SECOM

採用 UCI ML Repository 之 SECOM 資料集，情境為半導體製程產線之線上製程監測。第一個檔案包含 1,567 筆觀測值與 591 個連續型特徵，紀錄各式製程與感測參數，例如溫度、壓力、電壓及化學濃度等，可視為特定時間點整體製程狀態的快照。第二個檔案則提供與每筆觀測對應之最終測試結果（Pass/Fail）及時間戳記，作為監督式學習中的標籤資訊。
此資料集的核心目標在於評估能否透過製程中即時取得的感測器數據，提前辨識具有潛在不良風險的產品，而非僅依賴終端檢測結果。實務應用上，可用於建立二元分類模型進行良率預測、發展製程異常偵測與品質預警機制、執行特徵選擇以找出關鍵製程因子，以及作為缺失值處理與降維方法之研究與教學示例。

[Kaggle link]
https://www.kaggle.com/code/christianmagnusingul/uci-secom-semiconductor-manufacturing-data-uci/notebook


![Process flowchart](docs/flowcharts/Process%20Flowchart.png)




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
























