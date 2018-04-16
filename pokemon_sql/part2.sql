USE pokemon;

#What are all the types of pokemon that a pokemon can have?
SELECT COUNT(DISTINCT primary_type, secondary_type) FROM pokemons;

#What is the name of the pokemon with the id of 45
SELECT name FROM pokemons WHERE id = 45;

#How many pokemon are there?
SELECT COUNT(pokemons.id) FROM pokemons;

#How many types are there?
SELECT COUNT(id) FROM types;

#How many pokemon have a secondary type?
SELECT count(id) FROM pokemons WHERE secondary_type IS NOT NULL;