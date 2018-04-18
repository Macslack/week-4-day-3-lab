DROP TABLE students;
DROP TABLE houses;

CREATE TABLE houses (
  ID SERIAL PRIMARY KEY,
  name VARCHAR(255),
  url VARCHAR(255)
)

CREATE TABLE students (
  ID SERIAL PRIMARY KEY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  house VARCHAR(255),
  age INT
);
