--What is each pokemon's primary type?
select p.name, t.name from pokemons p join types t on p.primary_type = t.id;

--What is Rufflet's secondary type?
select p.name, t.name from pokemons p join types t on p.secondary_type = t.id where p.name = 'Rufflet';

--What are the names of the pokemon that belong to the trainer with trainerID 303?
select p.name from pokemons p join pokemon_trainer pt on p.id = pt.pokemon_id where pt.trainerID = 303;

--How many pokemon have a secondary type Poison?
select t.name, count(p.secondary_type) from pokemons p join types t on p.secondary_type = t.id where t.name = 'Poison';

--What are all the primary types and how many pokemon have that type?
select t.name as 'primary type', count(p.id) from types t join pokemons p on p.primary_type = t.id group by t.name;

--How many pokemon at level 100 does each trainer with at least one level 100 pokemone have?
-- (Hint: your query should not display a trainer
select trainerID, count(pokelevel) as 'lvl 100 pokemon' from pokemon_trainer where pokelevel = 100 group by trainerID;

--How many pokemon only belong to one trainer and no other?
SELECT COUNT(1) as "pokemon with one trainer"  FROM (select p.name, count(p_t.trainerID)
from pokemons p
  join pokemon_trainer p_t
    on p.id = p_t.pokemon_id
group by p.name
having count(p_t.trainerID) = 1) a;
