/* Types of pokemon*/
Select * FROM types;

/* Name of pokemon with ID 45*/

SELECT * FROM pokemons WHERE id = 45;

/* NNumber of pokemon*/
select COUNT(*) from pokemons;

/* How many types are there?*/
select COUNT(*) from types;

/* How many pokemon have a secondary type?*/
select COUNT(secondary_type) from pokemons;

#What is each pokemon's primary type?

 SELECT name,primary_type FROM pokemons
GROUP BY name,primary_type;

#What is Rufflet's secondary type?
SELECT p.name,t.name FROM pokemons p
JOIN types t ON p.secondary_type = t.id
WHERE p.name='Rufflet';

#What are the names of the pokemon that belong to the trainer with trainerID 303?
SELECT p.name FROM pokemons p
JOIN trainers t ON p.id = t.trainerID
WHERE t.trainerID=303;

#How many pokemon have a secondary type Poison?
SELECT COUNT(*) As 'Secondary Type' FROM pokemons p
JOIN types t ON p.secondary_type = t.id
WHERE t.name='Poison';

#What are all the primary types and how many pokemon have that type?
SELECT types.name, COUNT(pokemons.id) FROM types
JOIN pokemons on pokemons.primary_type = types.id
GROUP BY types.name;

#How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? (Hint: your query should not display a trainer
SELECT trainerID, count(pokelevel) FROM pokemon_trainer
WHERE pokelevel = 100
GROUP BY trainerID;

#How many pokemon only belong to one trainer and no other?
SELECT count(*), pokemon_id FROM pokemon_trainer
group by pokemon_id
having count(*) = 1

#Part 4
SELECT p.name PokeName, t.trainername TrainerName, sum(pokelevel) Level, tp.name PrimaryType, ts.name SecondaryType
FROM pokemon_trainer pt
JOIN pokemons p ON pt.pokemon_id = p.id
JOIN types tp ON p.primary_type = tp.id
JOIN types ts ON p.secondary_type = ts.id
JOIN trainers t ON pt.trainerID = t.trainerID
WHERE pokelevel = 100 GROUP BY trainerID AND tp.name = 'Ghost';