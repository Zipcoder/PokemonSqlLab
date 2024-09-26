/*Part 2*/
-- What are all the types of pokemon that a pokemon can have?
SELECT name FROM pokemon.types;
-- What is the name of the pokemon with id 45?
SELECT name FROM pokemon.pokemons WHERE id=45;
-- How many pokemon are there?
SELECT COUNT(*) AS "How many pokemon there are" FROM pokemon.pokemons;
-- How many types are there?
SELECT COUNT(*) AS "How many types there are" FROM pokemon.types;
-- How many pokemon have a secondary type?
SELECT COUNT(*) AS "Have a secondary type" FROM pokemon.pokemons WHERE secondary_type IS NOT NULL;