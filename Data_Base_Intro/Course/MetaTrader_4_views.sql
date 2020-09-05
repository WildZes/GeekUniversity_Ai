USE MetaTrader_4;

-- Просмотр временных интервалов, в пределах конторых имеются котировки валютных пар
CREATE OR REPLACE VIEW AUDCADview AS
SELECT
  'AUDCAD' AS pair,
  MIN(dt.date_and_time) OVER(PARTITION BY ac.Currency_Pair) AS starts,
  MAX(dt.date_and_time) OVER(PARTITION BY ac.Currency_Pair) AS ends
FROM date_time dt
LEFT JOIN AUDCAD1 ac
  ON dt.id = ac.Date_and_Time
LIMIT 1;

CREATE OR REPLACE VIEW AUDCHFview AS
SELECT
  'AUDCHF' AS pair,
  MIN(dt.date_and_time) OVER(PARTITION BY ac.Currency_Pair) AS starts,
  MAX(dt.date_and_time) OVER(PARTITION BY ac.Currency_Pair) AS ends
FROM date_time dt
LEFT JOIN AUDCHF1 ac
  ON dt.id = ac.Date_and_Time
LIMIT 1;

CREATE OR REPLACE VIEW AUDJPYview AS
SELECT
  'AUDJPY' AS pair,
  MIN(dt.date_and_time) OVER(PARTITION BY ac.Currency_Pair) AS starts,
  MAX(dt.date_and_time) OVER(PARTITION BY ac.Currency_Pair) AS ends
FROM date_time dt
LEFT JOIN AUDJPY1 ac
  ON dt.id = ac.Date_and_Time
LIMIT 1;

CREATE OR REPLACE VIEW AUDNZDview AS
SELECT
  'AUDNZD' AS pair,
  MIN(dt.date_and_time) OVER(PARTITION BY ac.Currency_Pair) AS starts,
  MAX(dt.date_and_time) OVER(PARTITION BY ac.Currency_Pair) AS ends
FROM date_time dt
LEFT JOIN AUDNZD1 ac
  ON dt.id = ac.Date_and_Time
LIMIT 1;
  
SELECT * FROM AUDNZDview;