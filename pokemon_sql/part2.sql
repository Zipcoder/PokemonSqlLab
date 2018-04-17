--What are all the types of pokemon that a pokemon can have?
select * from types

--What is the name of the pokemon with id 45?
select id, name from pokemons where id = 45;

--How many pokemon are there?
select count(*) from pokemons;

--How many types are there?
select count(*) from types;

--How many pokemon have a secondary type?
select count(secondary_type) from pokemons;