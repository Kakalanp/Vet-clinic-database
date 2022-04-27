/* Populate database with sample data. */

INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts)
VALUES ('Agumon', 'Feb 3rd, 2020', 10.23, true, 0),
('Gabumon', 'Nov 15th, 2018', 8, true, 2),
('Pikachu', 'Jan 7th, 2021', 15.04, false, 1),
('Devimon', 'May 12th, 2017', 11, true, 5);

INSERT INTO animals (name, date_of_birth, weight_kg, neutered, escape_attempts)
VALUES ('Charmander', 'Feb 8th, 2020', -11, false, 0),
('Plantmon', 'Nov 15th, 2021', -5.7, true, 2),
('Squirtle', 'Apr 2nd, 1993', -12.13, false, 3),
('Angemon', 'Jun 12th, 2005', -45, true, 1),
('Boarmon', 'Jun 7th, 2005', 20.4, true, 7),
('Blossom', 'Oct 13th, 1998', 17, true, 3),
('Ditto', 'May 14th, 2022', 22, true, 4);

INSERT INTO owners(full_name,age)
VALUES ('Sam Smith', 34),
('Jennifer Orwell',19 ),
('Bob',45),
('Melody Pond',77),
('Dean Winchester',14),
('Jodie Whittaker',38);

INSERT INTO species(name)
VALUES('Pokemon'), ('Digimon');

UPDATE animals
SET species_id = 2 WHERE name LIKE '%mon',
SET species_id = 1 WHERE name NOT LIKE '%mon';

UPDATE animals
Set owner_id = 1 WHERE name IN ('Agumon'),
Set owner_id = 2 WHERE name IN ('Gabumon', 'Pikachu'),
Set owner_id = 3 WHERE name IN ('Devimon', 'Plantmon'),
Set owner_id = 4 WHERE name IN ('Charmander', 'Squirtle', 'Blossom'),
Set owner_id = 5 WHERE name IN ('Angemon','Boarmon');
