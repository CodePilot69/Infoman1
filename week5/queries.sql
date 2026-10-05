-- Task 1
SELECT * FROM pet;

SELECT pet_name, species
FROM pet;


-- Task 2
SELECT pet_name, species
FROM pet
WHERE species = 'Dog';


-- Task 3
SELECT pet_name, species, age
FROM pet
WHERE age > 3;

SELECT *
FROM appointment
WHERE appointment_date > '2026-09-22';


-- Task 4
SELECT pet_name, species
FROM pet
WHERE species = 'Dog';

-- Deliberate error
SELECT pet_name, species
FROM pet
WHERE species = Dog;

-- Corrected query
SELECT pet_name, species
FROM pet
WHERE species = 'Dog';