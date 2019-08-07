# What are all the types of pokemon that a pokemon can have?
select name as type from types;

# What is the name of the pokemon with id 45?
select name from pokemons where id=45;

# How many pokemon are there?
select count(*) as amount from pokemons;

# How many types are there?
select count(*) as amount from types;

# How many pokemon have a secondary type?
select count(*) as amount from pokemons where secondary_type is not null;