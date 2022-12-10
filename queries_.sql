
-- create
CREATE TABLE LIST (
  id INT,
  FIO TEXT,
  birthday TEXT,
  status TEXT NOT NULL,
  phone INT,
  comment TEXT,
  adress VARCHAR(45),
  bank_group TEXT
);

CREATE TABLE PEOPLE(
id INT primary key,
FIO TEXT, 
birthday TEXT,
status TEXT
);

CREATE TABLE PHONE(
whose_phone INT,
phone INT,
comment TEXT
);

CREATE TABLE ADRESS(
whose_adress INT,
adress TEXT,
comment TEXT
);

-- insert
INSERT INTO LIST VALUES (1, "Иванов И. И.",	"12.02.1990",	"женат",	126,	"интернет",	"Можга",	"Работа");
INSERT INTO LIST VALUES (2, "Иванов И. И.",	"12.02.1990",	"женат",	127,	"старый",	"Можга",	"Работа");
INSERT INTO LIST VALUES (3, "Иванов И. И.",	"18.09.2001",	"холост",	527,	"личный",	"Санкт-Петербург",	"Школа");
INSERT INTO LIST VALUES (4, "Петров П. П.",	"23.04.1983",	"женат",	234,	"личный",	"Москва",	"Родня");
INSERT INTO LIST VALUES (4, "Петров П. П.",	"24.04.1983",	"женат",	235,	"рабочий",	"Москва",	"Родня");
INSERT INTO LIST VALUES (5, "Васильев В. В.",	"21.05.1998",	"холост",	456,	"личный",	"Белгород",	"Друзья");
INSERT INTO LIST VALUES (6, "Сидоров С.С.",	"13.07.2007",	"холост",	643,	"личный",	"Киров",	"Родня");
INSERT INTO LIST VALUES (6, "Сидоров С.С.",	"13.07.2007",	"холост",	654,	"старый",	"Киров",	"Родня");
INSERT INTO LIST VALUES (7, "Александров А.А.",	"05.03.1987",	"женат",	412,	"рабочий",	"Уфа",	"Друзья");
INSERT INTO LIST VALUES (8, "Борисов Б.Б",	"16.08.1989",	"холост",	723,	"рабочий",	"Москва",	"Работа");
INSERT INTO LIST VALUES (9, "Михайлов М.М.",	"08.01.1997",	"женат", 876,	"личный",	"Сочи",	"Университет");
INSERT INTO LIST VALUES (9, "Михайлов М.М.",	"08.01.1997",	"женат", 875,	"рабочий",	"Сочи",	"Университет");
INSERT INTO LIST VALUES (10, "Кириллов К.К.",	"03.12.1996",	"холост",	933,	"личный",	"Киров",	"Работа");

INSERT INTO PEOPLE VALUES (1,	"Иванов И. И.",	"12.02.1990",	"женат");
INSERT INTO PEOPLE VALUES (2, "Иванов И. И.",	"18.09.2001",	"холост");
INSERT INTO PEOPLE VALUES (3,	"Петров П. П.",	"23.04.1983",	"женат");
INSERT INTO PEOPLE VALUES (4,	"Васильев В. В.",	"21.05.1998",	"холост");
INSERT INTO PEOPLE VALUES (25,	"Кузьмин К.К.",	"21.05.2020",	"холост");

INSERT INTO PHONE VALUES (1, 123, "личный");
INSERT INTO PHONE VALUES (1, 124, "рабочий");
INSERT INTO PHONE VALUES (1, 125, "для поездок");
INSERT INTO PHONE VALUES (1, 126, "интернет");
INSERT INTO PHONE VALUES (1, 127, "старый");
INSERT INTO PHONE VALUES (2, 527, "личный");
INSERT INTO PHONE VALUES (3, 234, "личный");
INSERT INTO PHONE VALUES (3, 235, "рабочий");
INSERT INTO PHONE VALUES (4, 456, "личный");
INSERT INTO PHONE VALUES (11, 999, "личный");
INSERT INTO PHONE VALUES (12, 997, "рабочий");
INSERT INTO PHONE VALUES (13, 995, "личный");
INSERT INTO PHONE VALUES (14, 993, "для поездок");
INSERT INTO PHONE VALUES (15, 991, "для поездок");

INSERT INTO ADRESS VALUES (1,	"Можга",	"Место рождения");
INSERT INTO ADRESS VALUES (1,	"Казань",	"По прописке");
INSERT INTO ADRESS VALUES (1,	"Москва",	"Рабочий");
INSERT INTO ADRESS VALUES (2,	"Санкт-Петербург",	"По прописке");
INSERT INTO ADRESS VALUES (3,	"Москва",	"По прописке");
INSERT INTO ADRESS VALUES (4,	"Белгород",	"По прописке");
INSERT INTO ADRESS VALUES (5,	"Уфа",	"По прописке");
INSERT INTO ADRESS VALUES (6,	"Сочи",	"По прописке");
INSERT INTO ADRESS VALUES (7,	"Киров",	"Рабочий");
INSERT INTO ADRESS VALUES (8,	"Владивосток",	"Место рождения");
INSERT INTO ADRESS VALUES (9,	"Рязань",	"Рабочий");
INSERT INTO ADRESS VALUES (10,	"Хабаровск",	"Место рождения");

-- fetch 
SELECT * FROM LIST;

SELECT "";

SELECT FIO, adress FROM LIST;
SELECT "";

SELECT FIO, phone, comment
FROM LIST
WHERE bank_group = "Родня";
SELECT "";

SELECT FIO, status, bank_group
FROM LIST
WHERE status = "женат" AND bank_group = "Работа";
SELECT "";

SELECT FIO, status, bank_group
FROM LIST
WHERE status = "женат" OR bank_group = "Работа" OR adress = "Белгород";
SELECT "";

SELECT "ДАЛЕЕ ЗАПРОСЫ И ТАБЛИЦЫ ИЗ ДЗ";
SELECT "";

SELECT "SELECT ФИО, Д/р, Адрес FROM Общий список";
SELECT FIO, birthday, adress FROM LIST;
SELECT "";

SELECT "SELECT ФИО, Статус FROM Общий список WHERE Адрес = «Можга»";
SELECT FIO, status
FROM LIST
WHERE adress = "Можга";
SELECT "";

SELECT "SELECT ФИО FROM Общий список WHERE Адрес = «Москва» AND Группа = «Работа»";
SELECT FIO
FROM LIST
WHERE adress = "Москва" AND bank_group = "Работа";
SELECT "";

SELECT "SELECT Д/р FROM Общий список WHERE Адрес = «Москва» OR Группа = «Работа»";
SELECT birthday 
FROM LIST
WHERE adress = "Москва" OR bank_group = "Работа";
SELECT "";

SELECT "Таблица Люди";
SELECT * FROM PEOPLE;
SELECT "";

SELECT "Таблица Телефоны";
SELECT * FROM PHONE;
SELECT "";

SELECT "Таблица Адреса";
SELECT * FROM ADRESS;
SELECT "";

SELECT "INNER JOIN Люди, Адреса ON id = Чей адрес";
SELECT * FROM PEOPLE
INNER JOIN ADRESS
ON id = whose_adress;
SELECT "";

SELECT "LEFT JOIN Люди, Адреса ON id = Чей адрес";
SELECT * FROM PEOPLE
LEFT JOIN ADRESS
ON id = whose_adress;
SELECT "";

SELECT "RIGHT JOIN Люди, Адреса ON id = Чей адрес";
SELECT * FROM PEOPLE
RIGHT JOIN ADRESS
ON id = whose_adress;
SELECT "";

SELECT "FULL JOIN Люди, Адреса ON id = Чей адрес";
SELECT * FROM PEOPLE
LEFT JOIN ADRESS
ON id = whose_adress
UNION
SELECT * FROM PEOPLE
RIGHT JOIN ADRESS
ON id = whose_adress;
SELECT "";

SELECT "SELECT ФИО, Адрес, Комментарий FROM Люди RIGHT JOIN Адреса ON id = Чей Адрес";
SELECT FIO, adress, comment FROM PEOPLE
RIGHT JOIN ADRESS
ON id = whose_adress;
SELECT "";