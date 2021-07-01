--What are all the types of pokemon that a pokemon can have?
SELECT *
FROM pokemon.types;
--What is the name of the pokemon with id 45?
SELECT name
FROM pokemon.pokemons
WHERE id = 45;
--How many pokemon are there?
SELECT COUNT(id) FROM pokemon.pokemons;
--How many types are there?
SELECT COUNT(DISTINCT primary_type)
FROM pokemon.pokemons;
--How many pokemon have a secondary type?
SELECT COUNT(id)
FROM pokemon.pokemons
WHERE secondary_type IS NOT NULL

