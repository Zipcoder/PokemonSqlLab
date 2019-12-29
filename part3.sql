#What is each pokemon's primary type?
Select p.name as pokemon_name, t.name as primary_type from types as t inner join pokemons as p where p.primary_type = t.id order by p.name;

#What is Rufflet's secondary type?
Select p.name as pokemon_name, t.name as secondary_type from pokemons as p inner join types as t where p.secondary_type = t.id and p.name = 'Rufflet';

#What are the names of the pokemon that belong to the trainer with trainerID 303?
Select p.name as pokemon_name from pokemons as p join pokemon_trainer as pt on p.id = pt.pokemon_id where pt.trainerId = 303;

#How many pokemon have a secondary type Poison
Select count(*) as nr_pokemons, t.name as type from pokemons as p join types as t on p.secondary_type = t.id where t.name = 'Poison';

#What are all the primary types and how many pokemon have that type?
Select count(p.id) as pokemon_count, t.name as type from pokemons as p join types as t on p.primary_type = t.id group by p.primary_type;

#How many pokemon at level 100 does each trainer with at least one level 100 pokemon have? (Hint: your query should not display a trainer
Select count(trainerid) as nr_pokemons, pokelevel as level from pokemon_trainer where pokelevel = 100 group by trainerid, pokelevel;

#How many pokemon only belong to one trainer and no other
Select count(pokemon_id) as nr_trainers, pokemon_id from pokemon_trainer group by pokemon_id having count(pokemon_id) = 1;
