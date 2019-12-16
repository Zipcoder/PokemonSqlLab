#What is each pokemon's primary type?
Select p.name, t.name from pokemons  as p join types as t on p.primary_type = t.id;
#What is Rufflet's secondary type?
Select p.name, t.name from pokemons as p join types as t on p.secondary_type = t.id Where p.name = 'Rufflet';
#What are the names of the pokemon that belong to the trainer with trainerID 303?
Select t.trainername, p.name as 'pokemon name'
from pokemon_trainer as pt
join trainers as t on t.trainerID = pt.trainerID
join pokemons as p on p.id = pt.pokemon_id;

#How many pokemon have a secondary type Poison
Select count(*) from pokemons as p join types as t on p.secondary_type = t.id  
where t.name = 'poison';
#What are all the primary types and how many pokemon have that type?
Select t.name, count(*) 
from pokemons as p 
join types as t on p.primary_type = t.id
group by t.name;
#How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? (Hint: your query should not display a trainer

#How many pokemon only belong to one trainer and no other?
