# What is each pokemon's primary type?
select pokemons.name, types.name as "type" from pokemons join types on pokemons.primary_type = types.id;

# What is Rufflet's secondary type?
select types.name as "type" from pokemons join types on pokemons.secondary_type = types.id where pokemons.name = "Rufflet";

# What are the names of the pokemon that belong to the trainer with trainerID 303?pokemon_trainertrainers
select name from pokemons join pokemon_trainer on pokemons.id = pokemon_trainer.pokemon_id where trainerId = 303;

# How many pokemon have a secondary type Poison
select count(*) as "Poison as Secondary Type Amount" from pokemons join types on pokemons.secondary_type = types.id where types.name = "Poison";

# What are all the primary types and how many pokemon have that type?
select types.name as type, count(*) as amount from pokemons join types on pokemons.primary_type = types.id group by types.name;

# How many pokemon at level 100 does each trainer with at least one level 100 pokemone have?
select trainers.trainername, count(*) as "Amount of lv.100 Pokemon" from 
pokemon_trainer join trainers
on pokemon_trainer.trainerID = trainers.trainerId
where pokelevel = 100
group by trainers.trainerId;

# How many pokemon only belong to one trainer and no other?
select count(*) as total from (
	select count(*) as amount from pokemon_trainer 
    group by pokemon_id having amount = 1) as p;