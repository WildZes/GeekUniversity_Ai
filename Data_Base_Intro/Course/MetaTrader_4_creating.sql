-- CREATE DATABASE MetaTrader_4;

USE MetaTrader_4;

CREATE TEMPORARY TABLE IF NOT EXISTS tmpEURUSD1 (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  qDate DATE,
  qTime TIME,
  qOpen FLOAT,
  qHigh FLOAT,
  qLow FLOAT,
  qClose FLOAT,
  qVolume INT,
  PRIMARY KEY (id)
);

-- Проверил в какую папку н-- Окончательная таблица для одной из паружно сохранить csv файлы, чтобы было возможно импортировать их в таблицу
SHOW VARIABLES LIKE "secure_file_priv";

LOAD DATA INFILE '/var/lib/mysql-files/EURUSD1.csv'
INTO TABLE tmpEURUSD1
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(qDate, qTime, qOpen, qHigh, qLow, qClose, qVolume);

-- Окончательная таблица для одной из пар
CREATE TABLE IF NOT EXISTS EURUSD1 (
  Date_and_Time INT UNSIGNED,
  Currency_Pair INT UNSIGNED,
  qOpen FLOAT,
  qHigh FLOAT,
  qLow FLOAT,
  qClose FLOAT,
  qVolume INT UNSIGNED,
  PRIMARY KEY (Date_and_Time, Currency_Pair),
  FOREIGN KEY (Date_and_Time) REFERENCES date_time(id),
  FOREIGN KEY (Currency_Pair) REFERENCES currency_pairs(id)
);

INSERT INTO EURUSD1
SELECT dt.id, cp.id, tEU.qOpen, tEU.qHigh, tEU.qLow, tEU.qClose, tEU.qVolume
FROM date_time dt, currency_pairs cp, tmpEURUSD1 tEU
  WHERE dt.date_and_time = CONCAT(tEU.qDate, ' ', tEU.qTime) AND cp.pair_name = 'EURUSD';

-- Вспомнил, что не задал параметр ON DELETE для FOREIGN KEY
SHOW CREATE TABLE EURUSD1;
ALTER TABLE EURUSD1 DROP FOREIGN KEY `EURUSD1_ibfk_1`;
ALTER TABLE EURUSD1 DROP FOREIGN KEY `EURUSD1_ibfk_2`;
ALTER TABLE EURUSD1 ADD CONSTRAINT EURUSD1_Date_and_Time_fk
FOREIGN KEY (Date_and_Time) REFERENCES date_time(id) ON DELETE CASCADE;
ALTER TABLE EURUSD1 ADD CONSTRAINT EURUSD1_Currency_Pair_fk
FOREIGN KEY (Currency_Pair) REFERENCES currency_pairs(id) ON DELETE CASCADE;
  

CREATE TEMPORARY TABLE IF NOT EXISTS tmpAUDCAD1 (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  qDate DATE,
  qTime TIME,
  qOpen FLOAT,
  qHigh FLOAT,
  qLow FLOAT,
  qClose FLOAT,
  qVolume INT,
  PRIMARY KEY (id)
);

LOAD DATA INFILE '/var/lib/mysql-files/AUDCAD1.csv'
INTO TABLE tmpAUDCAD1
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(qDate, qTime, qOpen, qHigh, qLow, qClose, qVolume);

CREATE TABLE IF NOT EXISTS AUDCAD1 (
  Date_and_Time INT UNSIGNED,
  Currency_Pair INT UNSIGNED,
  qOpen FLOAT,
  qHigh FLOAT,
  qLow FLOAT,
  qClose FLOAT,
  qVolume INT UNSIGNED,
  PRIMARY KEY (Date_and_Time, Currency_Pair),
  FOREIGN KEY (Date_and_Time) REFERENCES date_time(id) ON DELETE CASCADE,
  FOREIGN KEY (Currency_Pair) REFERENCES currency_pairs(id) ON DELETE CASCADE
);

INSERT INTO AUDCAD1
SELECT dt.id, cp.id, tAC.qOpen, tAC.qHigh, tAC.qLow, tAC.qClose, tAC.qVolume
FROM date_time dt, currency_pairs cp, tmpAUDCAD1 tAC
  WHERE dt.date_and_time = CONCAT(tAC.qDate, ' ', tAC.qTime) AND cp.pair_name = 'AUDCAD';

 
CREATE TEMPORARY TABLE IF NOT EXISTS tmpAUDCHF1 (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  qDate DATE,
  qTime TIME,
  qOpen FLOAT,
  qHigh FLOAT,
  qLow FLOAT,
  qClose FLOAT,
  qVolume INT,
  PRIMARY KEY (id)
);

LOAD DATA INFILE '/var/lib/mysql-files/AUDCHF1.csv'
INTO TABLE tmpAUDCHF1
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(qDate, qTime, qOpen, qHigh, qLow, qClose, qVolume);

CREATE TABLE IF NOT EXISTS AUDCHF1 (
  Date_and_Time INT UNSIGNED,
  Currency_Pair INT UNSIGNED,
  qOpen FLOAT,
  qHigh FLOAT,
  qLow FLOAT,
  qClose FLOAT,
  qVolume INT UNSIGNED,
  PRIMARY KEY (Date_and_Time, Currency_Pair),
  FOREIGN KEY (Date_and_Time) REFERENCES date_time(id) ON DELETE CASCADE,
  FOREIGN KEY (Currency_Pair) REFERENCES currency_pairs(id) ON DELETE CASCADE
);

INSERT INTO AUDCHF1
SELECT dt.id, cp.id, tAC.qOpen, tAC.qHigh, tAC.qLow, tAC.qClose, tAC.qVolume
FROM date_time dt, currency_pairs cp, tmpAUDCHF1 tAC
  WHERE dt.date_and_time = CONCAT(tAC.qDate, ' ', tAC.qTime) AND cp.pair_name = 'AUDCHF';
 

CREATE TEMPORARY TABLE IF NOT EXISTS tmpAUDJPY1 (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  qDate DATE,
  qTime TIME,
  qOpen FLOAT,
  qHigh FLOAT,
  qLow FLOAT,
  qClose FLOAT,
  qVolume INT,
  PRIMARY KEY (id)
);

LOAD DATA INFILE '/var/lib/mysql-files/AUDJPY1.csv'
INTO TABLE tmpAUDJPY1
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(qDate, qTime, qOpen, qHigh, qLow, qClose, qVolume);

CREATE TABLE IF NOT EXISTS AUDJPY1 (
  Date_and_Time INT UNSIGNED,
  Currency_Pair INT UNSIGNED,
  qOpen FLOAT,
  qHigh FLOAT,
  qLow FLOAT,
  qClose FLOAT,
  qVolume INT UNSIGNED,
  PRIMARY KEY (Date_and_Time, Currency_Pair),
  FOREIGN KEY (Date_and_Time) REFERENCES date_time(id) ON DELETE CASCADE,
  FOREIGN KEY (Currency_Pair) REFERENCES currency_pairs(id) ON DELETE CASCADE
);

INSERT INTO AUDJPY1
SELECT dt.id, cp.id, tAJ.qOpen, tAJ.qHigh, tAJ.qLow, tAJ.qClose, tAJ.qVolume
FROM date_time dt, currency_pairs cp, tmpAUDJPY1 tAJ
  WHERE dt.date_and_time = CONCAT(tAJ.qDate, ' ', tAJ.qTime) AND cp.pair_name = 'AUDJPY';
 
 
CREATE TEMPORARY TABLE IF NOT EXISTS tmpAUDNZD1 (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  qDate DATE,
  qTime TIME,
  qOpen FLOAT,
  qHigh FLOAT,
  qLow FLOAT,
  qClose FLOAT,
  qVolume INT,
  PRIMARY KEY (id)
);

LOAD DATA INFILE '/var/lib/mysql-files/AUDNZD1.csv'
INTO TABLE tmpAUDNZD1
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(qDate, qTime, qOpen, qHigh, qLow, qClose, qVolume);

CREATE TABLE IF NOT EXISTS AUDNZD1 (
  Date_and_Time INT UNSIGNED,
  Currency_Pair INT UNSIGNED,
  qOpen FLOAT,
  qHigh FLOAT,
  qLow FLOAT,
  qClose FLOAT,
  qVolume INT UNSIGNED,
  PRIMARY KEY (Date_and_Time, Currency_Pair),
  FOREIGN KEY (Date_and_Time) REFERENCES date_time(id) ON DELETE CASCADE,
  FOREIGN KEY (Currency_Pair) REFERENCES currency_pairs(id) ON DELETE CASCADE
);

INSERT INTO AUDNZD1
SELECT dt.id, cp.id, tANn.qOpen, tANn.qHigh, tANn.qLow, tANn.qClose, tANn.qVolume
FROM date_time dt, currency_pairs cp, tmpAUDNZD1 tANn
  WHERE dt.date_and_time = CONCAT(tANn.qDate, ' ', tANn.qTime) AND cp.pair_name = 'AUDNZD';
 
 
CREATE TEMPORARY TABLE IF NOT EXISTS tmpAUDUSD1 (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  qDate DATE,
  qTime TIME,
  qOpen FLOAT,
  qHigh FLOAT,
  qLow FLOAT,
  qClose FLOAT,
  qVolume INT,
  PRIMARY KEY (id)
);

LOAD DATA INFILE '/var/lib/mysql-files/AUDUSD1.csv'
INTO TABLE tmpAUDUSD1
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(qDate, qTime, qOpen, qHigh, qLow, qClose, qVolume);

CREATE TABLE IF NOT EXISTS AUDUSD1 (
  Date_and_Time INT UNSIGNED,
  Currency_Pair INT UNSIGNED,
  qOpen FLOAT,
  qHigh FLOAT,
  qLow FLOAT,
  qClose FLOAT,
  qVolume INT UNSIGNED,
  PRIMARY KEY (Date_and_Time, Currency_Pair),
  FOREIGN KEY (Date_and_Time) REFERENCES date_time(id) ON DELETE CASCADE,
  FOREIGN KEY (Currency_Pair) REFERENCES currency_pairs(id) ON DELETE CASCADE
);

INSERT INTO AUDUSD1
SELECT dt.id, cp.id, tAU.qOpen, tAU.qHigh, tAU.qLow, tAU.qClose, tAU.qVolume
FROM date_time dt, currency_pairs cp, tmpAUDUSD1 tAU
  WHERE dt.date_and_time = CONCAT(tAU.qDate, ' ', tAU.qTime) AND cp.pair_name = 'AUDUSD';
 
 
CREATE TEMPORARY TABLE IF NOT EXISTS tmpCADCHF1 (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  qDate DATE,
  qTime TIME,
  qOpen FLOAT,
  qHigh FLOAT,
  qLow FLOAT,
  qClose FLOAT,
  qVolume INT,
  PRIMARY KEY (id)
);

LOAD DATA INFILE '/var/lib/mysql-files/CADCHF1.csv'
INTO TABLE tmpCADCHF1
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(qDate, qTime, qOpen, qHigh, qLow, qClose, qVolume);

CREATE TABLE IF NOT EXISTS CADCHF1 (
  Date_and_Time INT UNSIGNED,
  Currency_Pair INT UNSIGNED,
  qOpen FLOAT,
  qHigh FLOAT,
  qLow FLOAT,
  qClose FLOAT,
  qVolume INT UNSIGNED,
  PRIMARY KEY (Date_and_Time, Currency_Pair),
  FOREIGN KEY (Date_and_Time) REFERENCES date_time(id) ON DELETE CASCADE,
  FOREIGN KEY (Currency_Pair) REFERENCES currency_pairs(id) ON DELETE CASCADE
);

INSERT INTO CADCHF1
SELECT dt.id, cp.id, tCC.qOpen, tCC.qHigh, tCC.qLow, tCC.qClose, tCC.qVolume
FROM date_time dt, currency_pairs cp, tmpCADCHF1 tCC
  WHERE dt.date_and_time = CONCAT(tCC.qDate, ' ', tCC.qTime) AND cp.pair_name = 'CADCHF';
 
 
CREATE TEMPORARY TABLE IF NOT EXISTS tmpCADJPY1 (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  qDate DATE,
  qTime TIME,
  qOpen FLOAT,
  qHigh FLOAT,
  qLow FLOAT,
  qClose FLOAT,
  qVolume INT,
  PRIMARY KEY (id)
);

LOAD DATA INFILE '/var/lib/mysql-files/CADJPY1.csv'
INTO TABLE tmpCADJPY1
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(qDate, qTime, qOpen, qHigh, qLow, qClose, qVolume);

CREATE TABLE IF NOT EXISTS CADJPY1 (
  Date_and_Time INT UNSIGNED,
  Currency_Pair INT UNSIGNED,
  qOpen FLOAT,
  qHigh FLOAT,
  qLow FLOAT,
  qClose FLOAT,
  qVolume INT UNSIGNED,
  PRIMARY KEY (Date_and_Time, Currency_Pair),
  FOREIGN KEY (Date_and_Time) REFERENCES date_time(id) ON DELETE CASCADE,
  FOREIGN KEY (Currency_Pair) REFERENCES currency_pairs(id) ON DELETE CASCADE
);

INSERT INTO CADJPY1
SELECT dt.id, cp.id, tCJ.qOpen, tCJ.qHigh, tCJ.qLow, tCJ.qClose, tCJ.qVolume
FROM date_time dt, currency_pairs cp, tmpCADJPY1 tCJ
  WHERE dt.date_and_time = CONCAT(tCJ.qDate, ' ', tCJ.qTime) AND cp.pair_name = 'CADJPY';
 
 
CREATE TEMPORARY TABLE IF NOT EXISTS tmpCHFJPY1 (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  qDate DATE,
  qTime TIME,
  qOpen FLOAT,
  qHigh FLOAT,
  qLow FLOAT,
  qClose FLOAT,
  qVolume INT,
  PRIMARY KEY (id)
);

LOAD DATA INFILE '/var/lib/mysql-files/CHFJPY1.csv'
INTO TABLE tmpCHFJPY1
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(qDate, qTime, qOpen, qHigh, qLow, qClose, qVolume);

CREATE TABLE IF NOT EXISTS CHFJPY1 (
  Date_and_Time INT UNSIGNED,
  Currency_Pair INT UNSIGNED,
  qOpen FLOAT,
  qHigh FLOAT,
  qLow FLOAT,
  qClose FLOAT,
  qVolume INT UNSIGNED,
  PRIMARY KEY (Date_and_Time, Currency_Pair),
  FOREIGN KEY (Date_and_Time) REFERENCES date_time(id) ON DELETE CASCADE,
  FOREIGN KEY (Currency_Pair) REFERENCES currency_pairs(id) ON DELETE CASCADE
);

INSERT INTO CHFJPY1
SELECT dt.id, cp.id, tCJ.qOpen, tCJ.qHigh, tCJ.qLow, tCJ.qClose, tCJ.qVolume
FROM date_time dt, currency_pairs cp, tmpCHFJPY1 tCJ
  WHERE dt.date_and_time = CONCAT(tCJ.qDate, ' ', tCJ.qTime) AND cp.pair_name = 'CHFJPY';
 
 
CREATE TEMPORARY TABLE IF NOT EXISTS tmpGBPUSD1 (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  qDate DATE,
  qTime TIME,
  qOpen FLOAT,
  qHigh FLOAT,
  qLow FLOAT,
  qClose FLOAT,
  qVolume INT,
  PRIMARY KEY (id)
);

LOAD DATA INFILE '/var/lib/mysql-files/GBPUSD1.csv'
INTO TABLE tmpGBPUSD1
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
(qDate, qTime, qOpen, qHigh, qLow, qClose, qVolume);

CREATE TABLE IF NOT EXISTS GBPUSD1 (
  Date_and_Time INT UNSIGNED,
  Currency_Pair INT UNSIGNED,
  qOpen FLOAT,
  qHigh FLOAT,
  qLow FLOAT,
  qClose FLOAT,
  qVolume INT UNSIGNED,
  PRIMARY KEY (Date_and_Time, Currency_Pair),
  FOREIGN KEY (Date_and_Time) REFERENCES date_time(id) ON DELETE CASCADE,
  FOREIGN KEY (Currency_Pair) REFERENCES currency_pairs(id) ON DELETE CASCADE
);

INSERT INTO GBPUSD1
SELECT dt.id, cp.id, tGU.qOpen, tGU.qHigh, tGU.qLow, tGU.qClose, tGU.qVolume
FROM date_time dt, currency_pairs cp, tmpGBPUSD1 tGU
  WHERE dt.date_and_time = CONCAT(tGU.qDate, ' ', tGU.qTime) AND cp.pair_name = 'GBPUSD';
 

DROP TABLE IF EXISTS date_time;
CREATE TABLE IF NOT EXISTS date_time (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  date_and_time datetime,
  PRIMARY KEY (id)
);

CALL fillDtTable('2020-08-24 00:00:00', NOW());


-- Таблица currency_pairs избыточна и выполнена лишь для демонстрации возможностей в курсовом проекте
DROP TABLE IF EXISTS currency_pairs;
CREATE TABLE IF NOT EXISTS currency_pairs (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  pair_name VARCHAR(6),
  PRIMARY KEY (id)
);

INSERT INTO currency_pairs (pair_name)
VALUES ('AUDCAD'), ('AUDCHF'), ('AUDJPY'), ('AUDNZD'), ('AUDUSD'), ('CADCHF'), ('CADJPY'), ('CHFJPY'),
       ('EURAUD'), ('EURCAD'), ('EURCHF'), ('EURGBP'), ('EURJPY'), ('EURNZD'), ('EURUSD'), ('GBPCHF'),
       ('GBPJPY'), ('GBPUSD'), ('NZDJPY'), ('NZDUSD'), ('USDCAD'), ('USDCHF'), ('USDJPY'), ('XAGUSD'),
       ('XAUUSD');


