CREATE table name(
var INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(30),
dept CHAR(3) NOT NULL DEFAULT "CSE",
cgpa DOUBLE(3,2),
dob DATE,
reg int UNIQUE,
hometown CHAR(10)
)AUTO_INCREMENT=2;
alter TABLE name RENAME sadat;
rename TABLE sadat TO st;
INSERT INTO st(name,cgpa,dob,reg,hometown) VALUES("Sadat",3.00,"1998-11-2",2018331099,"Pabna");
INSERT INTO st(name,cgpa,reg,hometown) VALUES("Rony",3.65,2018331053,"pabna"),("Preity",3.80,2018331008,"Sylhet");
SELECT distinct hometown ,name,cgpa,reg FROM st;
SELECT name
FROM st;
SELECT name,cgpa
FROM st;
SELECT *FROM st LIMIT 2;
SELECT *FROM st LIMIT 1,2;
-- DROP TABLE st;
SELECT *FROM st ORDER BY name;
SELECT *FROM st ORDER BY cgpa DESC;
SELECT name,reg,cgpa FROM st WHERE cgpa>3.60;
SELECT name FROM st WHERE reg BETWEEN 2018331050 AND 2018331100;
SELECT name FROM st WHERE hometown!="Sylhet" AND cgpa>3.5;
SELECT name FROM st WHERE name LIKE "P%Y" AND name LIKE "%reit%" AND name LIKE "___%ity" AND name LIKE '%i_y';
SELECT name AS NAME FROM st;
UPDATE st SET dob="2000-1-1" WHERE name="Rony" || name="Preity";
-- DELETE FROM st WHERE dob="1998-11-2";
SELECT *FROM st;
DELETE FROM st;
-- DESC st;
-- desc sadat;