--sql start NormalCars
--creating db
DROP DATABASE IF EXISTS normal_cars;
DROP USER IF EXISTS normal_user;

CREATE USER normal_user;
CREATE DATABASE normal_cars WITH OWNER normal_user;


\c normal_cars normal_user;
\i scripts\normal_cars.sql;


--drop table if exits 
DROP TABLE IF EXISTS model_table
DROP TABLE IF EXISTS make_table 

CREATE TABLE make_table (
  id serial NOT NULL primary key,
  make_code character varying(125) NOT NULL,
  make_title character varying(125) NOT NULL
  );


CREATE TABLE model_table (
  id serial primary key,
  model_code character varying(125) NOT NULL,
  model_title character varying(125) NOT NULL,
  make_id integer REFERENCES make_table(id),
  year integer NOT NULL
  );


