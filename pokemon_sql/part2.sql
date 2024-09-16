#What are all the types of pokemon that a pokemon can have?
SELECT *
FROM pokemon.types;

#What is the name of the pokemon with id 45?
SELECT *
FROM pokemon.pokemons
WHERE id = 45;

#How many pokemon are there?
SELECT COUNT(id)
FROM pokemon.pokemons;

#How many types of pokemon are there
SELECT COUNT(id)
FROM pokemon.types;

#How many pokemon have a secondary type?
SELECT COUNT(secondary_type)
FROM pokemon.pokemons;
