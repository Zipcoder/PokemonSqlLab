#What are all the types of pokemon that a pokemon can have?
Select distinct name From types;
#What is the name of the pokemon with id 45?
Select name From pokemons where id = 45;
#How many pokemon are there?
Select count(distinct name) from pokemons;
#How many types are there?
Select count(*) from types;
#How many pokemon have a secondary type?
Select count(*) from pokemons where secondary_type is not null;
