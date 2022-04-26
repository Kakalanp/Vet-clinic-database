/* Database schema to keep the structure of entire database. */

CREATE TABLE animals (
  id                INT,
  name              VARCHAR(250),
  date_of_birth     DATE,
  escape_attempts   INT,
  neutered          bit,
  weight_kg         decimal,
  PRIMARY KEY(id)
);
