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

INSERT INTO vets(name, age, date_of_graduation)
VALUES ('William Tatcher', 45, 'Apr 23rd, 2000'),
('Maisy Smith', 26, 'Jan 17th, 2019'),
('Stephanie Mendez',64, 'May 4th, 1981'),
('Jack Harkness', 38, 'Jun 8th, 2008');

INSERT INTO specializations (species_id, species_name, vet_name, vet_id)
VALUES (1, 'Pokemon', 'William Tatcher', 1),
(1, 'Pokemon', 'Stephanie Mendez', 3),
(2, 'Digimon', 'Stephanie Mendez', 3),
(2, 'Digimon', 'Jack Harkness', 4);

INSERT INTO visits (animal_id,animal_name,vet_id,vet_name,date_of_visit)
VALUES (1,'Agumon', 1, 'William Tatcher', 'May 24th, 2020'),
(1, 'Agumon', 3, 'Stephanie Mendez', 'Jul 22th, 2020'),
(2, 'Gabumon', 4, 'Jack Harkness', 'Feb 2nd, 2021'),
(3, 'Pikachu', 2, 'Maisy Smith', 'Jan 5th, 2020'),
(3, 'Pikachu', 2, 'Maisy Smith', 'Mar 8th, 2020'),
(3, 'Pikachu', 2, 'Maisy Smith', 'May 14th, 2020'),
(3, 'Devimon', 3, 'Stephanie Mendez', 'May 4th, 2021'),
(5, 'Charmander', 4, 'Jack Harkness', 'Feb 24th, 2021'),
(6, 'Plantmon', 2, 'Maisy Smith', 'Dec 21st, 2019'),
(6, 'Plantmon', 1, 'William Tatcher', 'Aug 10th, 2020'),
(6, 'Plantmon', 2, 'Maisy Smith', 'Apr 7th, 2021'),
(7, 'Squirtle', 3, 'Stephanie Mendez', 'Sep 29th, 2019'),
(8, 'Angemon', 4, 'Jack Harkness', 'Oct 3rd, 2020'),
(8, 'Angemon', 4, 'Jack Harkness', 'Nov 4th, 2020'),
(9, 'Boarmon', 2, 'Maisy Smith', 'Jan 24th, 2019'),
(9, 'Boarmon', 2, 'Maisy Smith', 'May 15th, 2019'),
(9, 'Boarmon', 2, 'Maisy Smith', 'Feb 27th, 2020'),
(9, 'Boarmon', 2, 'Maisy Smith', 'Aug 3rd, 2020'),
(10, 'Blossom', 3, 'Stephanie Mendez', 'May 24th, 2020'),
(10, 'Blossom', 1, 'William Tatcher', 'Jan 11th, 2021');
