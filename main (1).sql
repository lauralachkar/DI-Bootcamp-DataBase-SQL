-- create a table
CREATE TABLE students (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  gender TEXT NOT NULL
);
-- insert some values
INSERT INTO students VALUES (1, 'Ryan', 'M');
INSERT INTO students VALUES (2, 'Joanna', 'F');
-- fetch some values
SELECT * FROM students WHERE gender = 'F';


CREATE TABLE FavFood
(
personID int,
FirstName varchar(50),
lastname varchar(50),
favf varchar(10)
);

-- Insert values in databas 
-- As the name suggests, varchar means character data that is varying. Also 
-- known as Variable Character, it is an indeterminate length string data type. 
-- It can hold numbers, letters and special characters

-- If we want to retrieve all the data from a table, we use the asterisk (*),
-- which tells the database to retrieve everything.



INSERT INTO FavFood VALUES ('342610664','Laura','lachkar','Pasta');
INSERT INTO FavFood VALUES ('11223333','Dianel','Cohen','Hamburgeur');
INSERT INTO FavFood VALUES ('028828283','Alon','Benhamou','Pizza');
INSERT INTO FavFood VALUES ('333456789','Adam','Pariante','Pancake');
SELECT * FROM FavFood;


CREATE TABLE finances(
id int primary key,
pay_date date,
electricity float,
water float,
payed_by varchar(50)
);

INSERT INTO finances VALUES (1,'1992-01-10',54.6,22.2,'Ron');
INSERT INTO finances VALUES (2,'1992-02-11',60.0,65.4,'Ron');
SELECT * FROM finances;

SELECT electricity,payed_by FROM finances;
SELECT * FROM finances WHERE electricity between 55.0 and 57.0;
SELECT * FROM finances WHERE electricity > 55.0 and electricity < 57.0;


-- The MAX() function returns the largest value of the selected column.
SELECT max(electricity) FROM finances;
SELECT max(electricity + water) FROM finances;

-- The AVG() function returns the average value of a numeric column. 
SELECT avg(electricity) FROM finances;

-- The following SQL statement finds the number of products:
SELECT count(water) FROM finances;

-- Exercises

CREATE TABLE actors(
 actor_id SERIAL PRIMARY KEY,
 first_name VARCHAR (50) NOT NULL,
 last_name VARCHAR (100) NOT NULL,
 age DATE NOT NULL,
 number_oscars SMALLINT NOT NULL
);

INSERT INTO actors VALUES ('2535533','Monica','Belluchi','10-05-10',3);
INSERT INTO actors VALUES ('3041222','Jennifor','Aniston','20-07-11',4);
INSERT INTO actors VALUES ('2234556','Jason','Tatoum','20-07-11',5);
INSERT INTO actors VALUES ('7888888','Jessica','Alba','20-07-11',6);
INSERT INTO actors VALUES ('9999999','Brad','Pit','20-07-11',7);
SELECT * FROM actors;

SELECT first_name FROM actors LIMIT 4;
SELECT * FROM actors WHERE age < '1960-01-01' ORDER BY last_name;

SELECT * FROM actors WHERE first_name = 'e';
SELECT * FROM actors WHERE number_oscars >= 5;