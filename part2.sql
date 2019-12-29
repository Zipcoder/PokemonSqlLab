#What are all the types of pokemon that a pokemon can have?
select name as pokemon_type from types;

#What is the name of the pokemon with id 45?
Select name from pokemons where id = 45;

#How many pokemon are there?
Select count(*) as nr_of_pokemon from pokemons;

#How many types are there?
Select count(*) as nr_of_types from types;

#How many pokemon have a secondary type?
Select count(*), name from pokemons where secondary_type is not null group by id;