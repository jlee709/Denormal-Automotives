--sql start DeNormalCars

DROP DATABASE IF EXISTS denormal_cars;
DROP USER IF EXISTS denormal_user;

CREATE USER denormal_user;
CREATE DATABASE denormal_cars WITH OWNER denormal_user;

\c denormal_cars;
\i scripts/denormal_data.sql;

SELECT make_title FROM car_models GROUP BY make_title;

SELECT COUNT(DISTINCT model_title) FROM car_models WHERE make_code = 'VOLKS';

SELECT count(*) FROM car_models WHERE make_code = 'LAM';

SELECT count(*) FROM car_models WHERE year BETWEEN 2010 AND 2015;



