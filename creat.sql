# création BDD test
CREATE DATABASE test;
#utilisation de la BDD test
use test;

# create table country
CREATE TABLE country
    (id INT NOT NULL, name VARCHAR(20), PRIMARY KEY(id))
;
    
INSERT INTO country
    (id, name)
VALUES
    (1, 'France'),
    (2, 'Australie'),
    (3, 'USA'),
    (4, 'Sénégal'),
    (5, 'Mexique'),
    (6, 'Burkina')
;
# Create table city
CREATE TABLE city
    (id INT NOT NULL, name VARCHAR(20), population DECIMAL(4,2), area DECIMAL(4,2), country_id INT, PRIMARY KEY(id))
;
    
INSERT INTO city
    (id,name,population, area, country_id)
VALUES
    (1, 'Paris', 2.2, 50, 1),
    (2, 'Sydney', 8.3, 200, 2),
    (3, 'New-York', 15.6, 90, 3),
    (4, 'Dakar', 3.1, 29, 4),
    (5, 'Mexico', 17.6, 88, 5),
    (6, 'Marseille', 0.9, 50, 1)
;