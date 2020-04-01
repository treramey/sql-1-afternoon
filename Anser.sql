-- Table - person 
CREATE TABLE person (
    person_id serial PRIMARY KEY,
    name varchar(200),
    age integer,
    height integer,
    city varchar(200),
    favorite_color varchar(200)
);

INSERT INTO person (name, age, height, city, favorite_color)
    VALUES ('Phoebe Riley', 21, 173, 'Gulsildale', 'Blue'), ('Elliot Clark', 34, 145, 'Vir', 'Purple'), ('Brooke Massey', 45, 198, 'Prince Dajhull', 'white'), ('Carrie-Ann Cresswell', 12, 146, 'Camhe', 'Red'), ('Nabeela Ware', 98, 156, 'Pugold Du Crookgreat', 'Blue');

SELECT * FROM person ORDER BY height DESC;

SELECT*FROM person ORDER By height ASC;
SELECT*FROM person ORDER By age DESC;
SELECT * FROM person WHERE age > 20;
SELECT * FROM person WHERE age =18;
SELECT * FROM person WHERE age < 20 OR age >30
SELECT * FROM person WHERE age  != 27
SELECT * FROM person WHERE favorite_color != 'red';
SELECT * FROM person WHERE favorite_color != 'red' AND favorite_color != 'blue';
SELECT * FROM person WHERE favorite_color = 'orange' OR favorite_color = 'green';
SELECT * FROM person WHERE favorite_color IN ( 'orange', 'green', 'blue' );
SELECT * FROM person WHERE favorite_color IN ( 'yellow', 'purple' )


--------------------------------------artist----------------------------------------------------------------------------------------------------------------
INSERT INTO artist ( name ) VALUES ( 'banksy' ),('Shepard Fairey'),('Invader');
SELECT * FROM artist ORDER BY name DESC LIMIT 10;
SELECT * FROM artist ORDER BY name ASC LIMIT 5;
SELECT * FROM artist WHERE name LIKE 'Black%';
SELECT * FROM artist WHERE name LIKE '%Black%';



-- Table orders --------------------------------------------------------------------------------------------------------------------------------------------
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    person_id INTEGER,
  	product_name VARCHAR(200),
  	product_price NUMERIC,
  	quantity INTEGER);

INSERT INTO orders ( person_id, product_name, product_price, quantity ) VALUES ( 0, 'Burger', 12.50, 1 ),(1, 'pizza',8.50,2),(2,'Ice Cream',3.50,5),(3,'Soda',2.50,6),(2,'Coffee',1.50,12);
SELECT * FROM orders;
SELECT SUM(quantity) FROM orders;
SELECT SUM(product_price * quantity) FROM orders;
SELECT SUM(product_price * quantity) FROM orders WHERE person_id = 3;


--------------------employee----------------------------------------------------------------------------------------------------------------------

SELECT first_name, last_name FROM employee WHERE city = 'Calgary';
SELECT MAX(birth_date) from employee;
SELECT MIN(birth_date) from employee;
SELECT * FROM employee WHERE reports_to = 2;
SELECT COUNT(*) FROM employee WHERE city = 'Lethbridge';


------------invoice-------------------------------------------------------------------------------------------------------------------------------
SELECT COUNT(*) FROM invoice WHERE billing_country = 'USA';
SELECT MAX(total) FROM invoice;
SELECT MIN(total) FROM invoice;
SELECT * FROM invoice WHERE total > 5;
SELECT COUNT(*) FROM invoice WHERE total < 5;
SELECT COUNT(*) FROM invoice WHERE billing_state in ('CA', 'TX', 'AZ');
SELECT AVG(total) FROM invoice;
SELECT SUM(total) FROM invoice;