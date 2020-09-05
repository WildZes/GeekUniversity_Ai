USE MetaTrader_4;


DROP PROCEDURE IF EXISTS fillDtTable;
DELIMITER //
CREATE PROCEDURE fillDtTable(dtStart DATETIME, dtEnd DATETIME)
BEGIN
  WHILE dtStart <= dtEnd DO
    INSERT INTO date_time(date_and_time) VALUES (dtStart);
    SET dtStart = date_add(dtStart, INTERVAL 1 MINUTE);
  END WHILE;
END //
DELIMITER ;

DROP PROCEDURE IF EXISTS showH4;
DELIMITER //
CREATE PROCEDURE showH4(currentDt DATETIME)
BEGIN
	SELECT dt.date_and_time,
	  eu.qOpen,
	(SELECT GREATEST(
	  MAX(eu.qHigh) OVER(PARTITION BY eu.Currency_Pair),
	  MAX(eu.qLow) OVER(PARTITION BY eu.Currency_Pair))
	FROM date_time dt
	LEFT JOIN EURUSD1 eu ON dt.id = eu.Date_and_Time
	WHERE dt.date_and_time >= currentDt AND dt.date_and_time < (currentDt + INTERVAL 240 MINUTE)
	LIMIT 1) AS qHigh,
	(SELECT LEAST(
	  MIN(eu.qHigh) OVER(PARTITION BY eu.Currency_Pair),
	  MIN(eu.qLow) OVER(PARTITION BY eu.Currency_Pair))
	FROM date_time dt
	LEFT JOIN EURUSD1 eu ON dt.id = eu.Date_and_Time
	WHERE dt.date_and_time >= currentDt AND dt.date_and_time < (currentDt + INTERVAL 240 MINUTE)
	LIMIT 1) AS qLow,
	(SELECT qClose FROM EURUSD1 WHERE Date_and_Time = (SELECT id FROM date_time WHERE Date_and_Time = (currentDt + INTERVAL 239 MINUTE))) AS qClose
	FROM date_time dt
	LEFT JOIN EURUSD1 eu ON dt.id = eu.Date_and_Time
	WHERE dt.date_and_time = currentDt;
END //
DELIMITER ;


-- Процедура создана для понимания показаний времени, применяемых в процедуре showH4
DROP PROCEDURE IF EXISTS showtime;
DELIMITER //
CREATE PROCEDURE showtime(curdt DATETIME)
BEGIN
	SELECT curdt, curdt + INTERVAL 239 MINUTE, curdt + INTERVAL 240 MINUTE;
END //
DELIMITER ;

CALL showtime('2020-08-28 12:00');
