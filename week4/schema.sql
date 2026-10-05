CREATE DATABASE infoman1_vetclinic;

USE infoman1_vetclinic;

CREATE TABLE owner (
    owner_id INT AUTO_INCREMENT PRIMARY KEY,
    owner_name VARCHAR(100) NOT NULL,
    phone VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE pet (
    pet_id INT AUTO_INCREMENT PRIMARY KEY,
    pet_name VARCHAR(100) NOT NULL,
    species VARCHAR(50) NOT NULL,
    breed VARCHAR(50),
    age INT,
    owner_id INT NOT NULL,
    FOREIGN KEY (owner_id) REFERENCES owner(owner_id)
);

CREATE TABLE veterinarian (
    veterinarian_id INT AUTO_INCREMENT PRIMARY KEY,
    veterinarian_name VARCHAR(100) NOT NULL,
    specialization VARCHAR(100),
    phone VARCHAR(20)
);

CREATE TABLE appointment (
    appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    appointment_date DATE NOT NULL,
    reason VARCHAR(255),
    pet_id INT NOT NULL,
    veterinarian_id INT NOT NULL,
    FOREIGN KEY (pet_id) REFERENCES pet(pet_id),
    FOREIGN KEY (veterinarian_id) REFERENCES veterinarian(veterinarian_id)
);

CREATE TABLE vaccination_record (
    vaccination_id INT AUTO_INCREMENT PRIMARY KEY,
    vaccine_name VARCHAR(100) NOT NULL,
    vaccination_date DATE NOT NULL,
    next_due_date DATE,
    pet_id INT NOT NULL,
    FOREIGN KEY (pet_id) REFERENCES pet(pet_id)
);