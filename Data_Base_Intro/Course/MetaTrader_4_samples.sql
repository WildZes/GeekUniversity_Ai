USE MetaTrader_4;

-- Выборка показателей для свечей H4 по паре EURUSD
-- в ходе опытного определения (см.ниже) выяснилось,
-- что для свечи H4 используется qOpen текущего времени, qClose текущего времени + 119 минут,
-- qHigh максимальное значение  из qOpne и qClose в интервале времени между текущим временем +
-- 119 минут
SELECT dt.date_and_time, eu.qOpen, eu.qHigh, eu.qLow, eu.qClose FROM date_time dt, EURUSD1 eu
WHERE dt.date_and_time > '2020-08-28 15:58' AND dt.date_and_time < '2020-08-28 16:02';

SELECT dt.date_and_time, eu.qOpen, eu.qHigh, eu.qLow, eu.qClose FROM date_time dt
LEFT JOIN EURUSD1 eu ON dt.id = eu.Date_and_Time
WHERE eu.qClose > 1.18823 AND eu.qClose < 1.18825 ORDER BY date_and_time;

-- Отображение свечи 2020-08-28 12:00
SELECT dt.date_and_time,
eu.qOpen,
(SELECT GREATEST(
  MAX(eu.qHigh) OVER(PARTITION BY eu.Currency_Pair),
  MAX(eu.qLow) OVER(PARTITION BY eu.Currency_Pair))
FROM date_time dt
LEFT JOIN EURUSD1 eu ON dt.id = eu.Date_and_Time
WHERE dt.date_and_time >= '2020-08-28 12:00' AND dt.date_and_time < '2020-08-28 16:00'
LIMIT 1) AS qHigh,
(SELECT LEAST(
  MIN(eu.qHigh) OVER(PARTITION BY eu.Currency_Pair),
  MIN(eu.qLow) OVER(PARTITION BY eu.Currency_Pair))
FROM date_time dt
LEFT JOIN EURUSD1 eu ON dt.id = eu.Date_and_Time
WHERE dt.date_and_time >= '2020-08-28 12:00' AND dt.date_and_time < '2020-08-28 16:00'
LIMIT 1) AS qLow,
(SELECT qClose FROM EURUSD1 WHERE Date_and_Time = (SELECT id FROM date_time WHERE Date_and_Time = '2020-08-28 15:59')) AS qClose
FROM date_time dt
LEFT JOIN EURUSD1 eu ON dt.id = eu.Date_and_Time
WHERE dt.date_and_time = '2020-08-28 12:00';

CALL showH4('2020-08-28 12:00');
