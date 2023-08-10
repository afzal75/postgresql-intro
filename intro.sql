-- Active: 1691093644596@@127.0.0.1@5432@test4

-- ## Crate a table

-- CREATE TABLE student (

--     student_id INT,

--     first_name VARCHAR(50),

--     last_name VARCHAR(50),

--     cgpa NUMERIC(1,2)

-- )

-- update a table name

ALTER TABLE student RENAME TO learners;

-- delete a TABLE

-- DROP TABLE learners;

-- Create a table with constrains

CREATE TABLE
    "user1"(
        user_id SERIAL PRIMARY KEY,
        username VARCHAR(255) UNIQUE NOT NULL,
        email VARCHAR(255) UNIQUE NOT NULL,
        age INT DEFAULT 18
    );

-- inset system 1

INSERT INTO
    user1 (user_id, user_name, email, age)
VALUES (
        2,
        'Muktadir',
        'muktadir@gmail.com',
        94
    );

-- insert system 2

INSERT INTO
    user1(user_name, email)
VALUES (
        'muktadir1',
        'mukd1@gmail.com'
    ), (
        'muktadir2',
        'mukd2@gmail.com'
    );

-- insert system 3

INSERT INTO user1
VALUES (
        'muktadir1',
        'mukd1@gmail.com'
    ), (
        'muktadir2',
        'mukd2@gmail.com'
    );

-- Delete all rows in a TABLE without deleting the table

TRUNCATE TABLE user1;

-- Alter TABLE

-- Add a COLUMN , CHANGE datatype of a COLUMN

-- rename a column, set DEFAULT value for a COLUMN

-- add CONSTRAINT to a COLUMN, DROP CONSTRAINT for a COLUMN

-- table RENAME

-- ALter TABLE_NAME ACTION

-- column added into a TABLE

ALTER TABLE user1
ADD
    COLUMN password VARCHAR(255) DEFAULT 'admin123' NOT NULL;

ALTER TABLE user1 ADD COLUMN demo int;

-- change COLUMN data type into TABLE

ALTER TABLE user1 alter COLUMN demo type TEXT;

-- set default value

ALTER TABLE user1 alter COLUMN demo set DEFAULT 'bangladesh';

-- remove DEFAULT value

ALTER TABLE user1 alter COLUMN demo DROP DEFAULT 'bangladesh';

INSERT INTO user1 VALUES(6, 'muktdir6', 'muktadir6@gmail.com');

-- Rename a COLUMN

ALTER TABLE user1 RENAME COLUMN demo to country;

-- added consraint

ALTER TABLE user1 alter COLUMN country set NOT NULL ;

-- remove consraint

ALTER TABLE user1 alter COLUMN country DROP NOT NULL;

-- add a constraint

ALTER TABLE user1 ADD CONSTRAINT unique_email UNIQUE(email);

-- delete a constraint

ALTER TABLE user1 DROP CONSTRAINT unique_email;

-- column drop into a TABLE

ALTER TABLE user1 DROP COLUMN age;

SELECT * FROM user1;

--     insert INTO user1 VALUES(1, 'abc', 'abc@gmail.com');

-- SELECT * FROM user1;

-- Department Table
-- each Deparment has many Employees

CREATE TABLE Department(
    deptID SERIAL PRIMARY KEY,
    deptName VARCHAR(50)
);

INSERT INTO Department VALUES(1, 'IT');

DELETE FROM Department WHERE deptID = 1;

SELECT * FROM Department;

-- Employee TABLE
-- Each Employee Belongs to a Department

CREATE TABLE
    Employee (
        empID SERIAL PRIMARY KEY,
        empName VARCHAR(50) NOT NULL,
        departmentID INT,
        CONSTRAINT fk_constraint_dept FOREIGN KEY (departmentID) REFERENCES Department(deptID));

INSERT INTO Employee VALUES(1, 'Afzal', 1);

DELETE FROM Employee WHERE empID = 1;

SELECT * FROM Employee;


CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(255) NOT NULL,
    description VARCHAR(255),
    published_date DATE
);

INSERT INTO courses(course_name, description, published_date)
VALUES('PostgreSQL for Developers', 'A complete PostgreSQL for Developers', '2020-07-12'),
('Python Programming', 'Learn Python from scratch', NULL),
('JavaScript Fundamentals',NULL,NULL ),
('React JS','Learn ReactJS from Scratch','2013-07-11'),
('Node JS','Learn NodeJs From Scratch','2014-08-30');

-- update DATABASE TABLE ROW

-- UPDATE courses 
-- SET description='This is the best SQL Course' 
-- where course_id=6 ;

UPDATE courses
SET
course_name = 'Postgress for beginners',
description = 'Dummy Text'
WHERE course_id > 1 OR course_id < 5;
-- WHERE course_id > 4;
-- WHERE course_id = 1;

DELETE FROM courses
WHERE course_id = 1;

SELECT * FROM courses;

-- -- procedure
-- CREATE PROCEDURE deactivate_unpaid_accounts()
-- LANGUAGE SQL
-- AS $$
-- UPDATE accounts SET account = FALSE WHERE balance = 0;
-- $$;

-- CALL  deactivate_unpaid_accounts();


-- CREATE FUNCTION account_type_count(account_type text) RETURNS INTEGER
-- LANGUAGE plpgsql
-- AS $$
--     DECLARE acount_count int;
--     BEGIN
--     SELECT COUNT(*) INTO acount_count FROM accoutns WHERE acounts.acount_type = $1;
--     RETURN
--     END
-- $$;


-- trigger

CREATE TABLE products(
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    base_price FLOAT8 NOT NULL,
    final_price FLOAT8
);

INSERT INTO products(title, base_price) VALUES ('Orge', 25);

SELECT * FROM products;

CREATE OR REPLACE TRIGGER add_tax_trigger
AFTER
INSERT ON products
FOR EACH ROW
EXECUTE FUNCTION update_final_price();

CREATE OR REPLACE FUNCTION update_final_price()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
BEGIN
    NEW.final_price := NEW.base_price * 1.05;
    RETURN NEW;
END;
$$;

-- CREATE FUNCTION update_final_price()
-- RETURNS TRIGGER
-- LANGUAGE plpgsql
-- AS $$
--     BEGIN
--     NEW.final_price := NEW.base_price * 1.05
-- END;
-- $$;
EXPLAIN ANALYSE SELECT empid FROM employees;

CREATE INDEX name_idx ON employees(name);

EXPLAIN ANALYSE SELECT empid FROM employees WHERE name = 'John Doe';
SELECT * FROM employees;










    
(
        'John Doe',
        1
    ), (
        'Jane Doe',
        2
    ), (
        'Peter Smith',
        3
    ), (
        'Mary Jones',
        4
    ), (
        'David Brown',
        5
    ), (
        'Last Name',
        6
    ), (
        'Jane Doe',
        7
    ), (
        'Peter Jones',
        8
    ), (
        'Mary Brown',
        9
    ), (
        'David Green',
        10
    ), (
        'Michael Williams',
        11
    ), (
        'Sarah Johnson',
        12
    ), (
        'Thomas Davis',
        13
    ), (
        'Emily White',
        14
    ), (
        'Christopher Black',
        15
    ), (
        'Hannah Brown',
        16
    ), (
        'William Green',
        17
    ), (
        'Elizabeth Smith',
        18
    ), (
        'James Jones',
        19
    ), (
        'Emily Williams',
        20
    ), (
        'David Brown',
        21
    ), (
        'Michael Green',
        22
    ), (
        'Sarah White',
        23
    ), (
        'Thomas Davis',
        24
    ), (
        'Emily Black',
        25
    ), (
        'Hannah Green',
        26
    ), (
        'William Black',
        27
    ), (
        'Elizabeth Brown',
        28
    ), (
        'James White',
        29
    ), (
        'Emily Davis',
        30
    ), (
        'David Williams',
        31
    ), (
        'Michael Green',
        32
    ), (
        'Sarah Black',
        33
    ), (
        'Thomas Brown',
        34
    ), (
        'Emily White',
        35
    ), (
        'Christopher Davis',
        36
    ), (
        'Hannah Williams',
        37
    ), (
        'William Green',
        38
    ), (
        'Elizabeth Black',
        39
    ), (
        'James Brown',
        40
    ), (
        'Emily White',
        41
    ), (
        'David Davis',
        42
    ), (
        'Michael Williams',
        43
    ), (
        'Sarah Green',
        44
    ), (
        'Hannah Brown',
        45
    ), (
        'William Green',
        46
    ), (
        'Elizabeth Williams',
        47
    ), (
        'James Black',
        48
    ), (
        'Emily Davis',
        49
    ), (
        'David White',
        50
    ), (
        'Michael Brown',
        51
    ), (
        'Sarah Green',
        52
    ), (
        'Thomas Williams',
        53
    ), (
        'Emily Black',
        54
    ), (
        'Christopher Davis',
        55
    ), (
        'Hannah White',
        56
    ), (
        'William Green',
        57
    ), (
        'Elizabeth Black',
        58
    ), (
        'James Brown',
        59
    ), (
        'Emily Williams',
        60
    ), (
        'David Davis',
        61
    ), (
        'Michael White',
        62
    ), (
        'Sarah Brown',
        63
    ), (
        'Hannah Black',
        64
    ), (
        'William Davis',
        65
    ), (
        'Elizabeth Williams',
        66
    ), (
        'James Green',
        67
    ), (
        'Emily Brown',
        68
    ), (
        'David White',
        69
    ), (
        'Michael Black',
        70
    ), (
        'Sarah Davis',
        71
    ), (
        'Thomas Williams',
        72
    ), (
        'Emily Green',
        73
    ), (
        'Christopher Brown',
        74
    ), (
        'Hannah White',
        75
    ), (
        'William Green',
        76
    ), (
        'Elizabeth Black',
        77
    ), (
        'James Brown',
        78
    ), (
        'Emily Williams',
        79
    ), (
        'David Davis',
        80
    ), (
        'Michael White',
        81
    ), (
        'Sarah Trown',
        82
    ), (
        'Hannah Black',
        83
    ), (
        'William Davis',
        84
    ), (
        'Elizabeth Williams',
        85
    ), (
        'James Green',
        86
    ), (
        'Emily Brown',
        87
    ), (
        'David White',
        88
    ), (
        'Michael Black',
        89
    ), (
        'Sarah Davis',
        90
    ), (
        'Thomas Williams',
        91
    ), (
        'Emily Green',
        92
    ), (
        'Christopher Brown',
        93
    ), (
        'Hannah White',
        94
    ), (
        'William Green',
        95
    ), (
        'Elizabeth Black',
        96
    ),
    (
        'Etrizabeth Black',
        97
    ),
    (
        'Eabeth Black',
        98
    ),
    (
        'Etrizabbveth Black',
        99
    ),
    (
        'Etrizabggth Black',
        100
    );



('Marketing', 2), ('Finance', 3), ('Sales', 2), ('IT', 5), ('HR', 4), ('Last Name', 1), ('Finance', 4), ('IT', 1), ('HR', 3), ('Marketing', 1), ('IT', 5), ('HR', 2), ('Finance', 4), ('Marketing', 1), ('Sales', 2), ('HR', 5), ('Marketing', 5), ('Finance', 2), ('Sales', 4), ('Marketing', 3), ('Finance', 5), ('IT', 1), ('Sales', 3), ('Finance', 1), ('Marketing', 4), ('HR', 2), ('Sales', 4), ('IT', 3), ('Marketing', 1), ('Finance', 5), ('IT', 3), ('Marketing', 2), ('HR', 1), ('IT', 4), ('Marketing', 3), ('Sales', 5), ('HR', 1), ('Marketing', 2), ('Finance', 4), ('Sales', 1), ('Marketing', 3), ('IT', 5), ('Sales', 4), ('HR', 2), ('Marketing', 1), ('Finance', 3), ('Sales', 1), ('Marketing', 5), ('IT', 2), ('HR', 4), ('Finance', 2), ('Marketing', 1), ('Sales', 3), ('IT', 5), ('Finance', 4), ('HR', 2), ('Marketing', 5), ('IT', 1), ('HR', 3), ('Sales', 4), ('Marketing', 5), ('Finance', 2), ('Sales', 3), ('Marketing', 1), ('IT', 4), ('HR', 5), ('Finance', 3), ('Marketing', 2), ('Sales', 1), ('IT', 5), ('Finance', 3), ('HR', 4), ('Marketing', 2), ('Sales', 5), ('Finance', 1), ('Sales', 2), ('Marketing', 3), ('IT', 4), ('HR', 5), ('Marketing', 2), ('Finance', 3), ('Sales', 1), ('Marketing', 4), ('IT', 5), ('HR', 1), ('Sales', 3), ('Marketing', 4), ('Finance', 2), ('Sales', 5), ('Marketing', 3), ('IT', 1), ('HR', 2), ('Finance', 4), ('Marketing', 1), ('HR', 5), ('Sales', 2), ('IT', 3), ('HR', 4), ('Marketing', 5), ('Finance', 1), ('Sales', 3), ('Marketing', 4), ('IT', 5), ('HR', 2), ('Sales', 1), ('Marketing', 3), ('Finance', 2), ('Sales', 4), ('Marketing', 5), ('IT', 1), ('HR', 3), ('Finance', 4), ('Marketing', 2), ('Sales', 1), ('Marketing', 3), ('Marketing', 4), ('Marketing', 1), ('Marketing', 2), ('Marketing', 4), ('Marketing', 3), ('Marketing', 1), ('Marketing', 5);

