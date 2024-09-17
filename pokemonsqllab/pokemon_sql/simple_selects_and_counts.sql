#What are all the types of pokemon that a pokemon can have?
SELECT name FROM pokemon.types;
#What is the name of the pokemon with id 45?
SELECT name FROM pokemon.pokemons WHERE id=45;
#How many pokemon are there?
SELECT COUNT(name) FROM pokemon.pokemons;
#How many types are there?
SELECT COUNT(name) FROM pokemon.types;
#How many pokemon have a secondary type?
SELECT COUNT(secondary_type) FROM pokemon.pokemons;