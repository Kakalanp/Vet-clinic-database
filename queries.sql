--Queries that provide answers to the questions from all projects.

SELECT * from animals WHERE name LIKE '%mon';
SELECT name FROM animals WHERE date_of_birth BETWEEN '2016%' AND '2019%';
SELECT name FROM animals WHERE neutered = true AND escape_attempts < 3;
SELECT date_of_birth FROM animals WHERE name IN ('Agumon', 'Pikachu');
SELECT name, escape_attempts FROM animals WHERE weight_kg >  10.5;
SELECT * FROM animals WHERE neutered = true;
SELECT * FROM animals WHERE name != 'Gabumon';
SELECT * FROM animals WHERE weight_kg BETWEEN 10.4 AND 17.3;

--FIRST TRANSACTION

BEGIN;

UPDATE animals SET species = 'unspecified';
SELECT species FROM animals;

ROLLBACK;

SELECT species FROM animals;

--SECOND TRANSACTION

BEGIN;

UPDATE animals SET species = 'digimon' WHERE name LIKE '%mon';
UPDATE animals SET species = 'pokemon' WHERE species IS NULL;

COMMIT;

SELECT species FROM animals;

--THIRD TRANSACTION

BEGIN;

DELETE * FROM animals;

ROLLBACK;

SELECT * FROM animals;

--FOURTH RANSACTION

BEGIN;

DELETE FROM animals WHERE date_of_birth > 'Jan 1st, 2022';

SAVEPOINT SP1;

UPDATE animals SET weight_kg = weight_kg * -1;

ROLLBACK TO SP1;

UPDATE animals SET weight_kg = weight_kg * -1 WHERE weight_kg < 0;

COMMIT;

SELECT * FROM animals;

--How many animals are there?
SELECT COUNT(*) FROM animals;
--How many animals have never tried to escape?
SELECT COUNT(*) FROM animals WHERE escape_attempts = 0;
--What is the average weight of animals?
SELECT AVG(weight_kg) FROM animals;
--Who escapes the most, neutered or not neutered animals?
SELECT MAX(escape_attempts),neutered FROM animals GROUP BY neutered;
--What is the minimum and maximum weight of each type of animal?
SELECT MIN(weight_kg),MAX(weight_kg),species FROM animals GROUP BY species;
--What is the average number of escape attempts per animal type of those born between 1990 and 2000?
SELECT AVG(escape_attempts),species FROM animals WHERE date_of_birth BETWEEN 'Jan 1st, 1990' AND 'Dec 31st, 2000' GROUP BY species;
--What animals belong to Melody Pond?
SELECT name FROM animals INNER JOIN owners ON animals.owner_id = owners.id WHERE owners.full_name = 'Melody Pond';
--List of all animals that are pokemon (their type is Pokemon)
SELECT * FROM animals INNER JOIN species ON animal.species_id = species.id WHERE species.name = 'Pokemon';
--List all owners and their animals, remember to include those that don't own any animal.
SELECT full_name, name FROM owners INNER JOIN animals ON owners.id = owner_id;
--How many animals are there per species?
SELECT species.name, COUNT(*) FROM animals INNER JOIN species ON species_id = species.id GROUP BY species.name;
--List all Digimon owned by Jennifer Orwell.
SELECT name FROM animals INNER JOIN owners ON animals.owner_id = owners.id WHERE owners.full_name = 'Jennifer Orwell' AND name LIKE '%mon';
--List all animals owned by Dean Winchester that haven't tried to escape.
SELECT * FROM animals INNER JOIN species ON animals.species_id = species.id INNER JOIN owners ON animals.owner_id = owners.id WHERE owners.full_name = 'Dean Winchester' AND escape_attempts = 0;
--Who owns the most animals?
SELECT full_name FROM owners INNER JOIN owners ON owner_id = owners.id GROUP BY o.owner_id ORDER BY COUNT(*) DESC LIMIT 1;
