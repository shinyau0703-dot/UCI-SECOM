-- 建立 time 欄位
CREATE TABLE secom_data (
    time timestamp
);

-- 自動加入 v0 ~ v589 欄位
DO $$
BEGIN
  FOR i IN 0..589 LOOP
    EXECUTE format('ALTER TABLE secom_data ADD COLUMN v%s double precision;', i);
  END LOOP;
END$$;

-- 最後加上 label 欄位
ALTER TABLE secom_data
ADD COLUMN label integer;
