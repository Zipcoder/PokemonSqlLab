USE pokemon;

#What is each pokemon's primary type?
SELECT DISTINCT pks.name, tp.name FROM pokemons pks
INNER JOIN types tp ON pks.primary_type = tp.id;

#What is Rufflet's secondary type?
SELECT pks.name, tps.name FROM pokemons pks
INNER JOIN types tps ON pks.secondary_type = tps.id
WHERE pks.name = "Rufflet";

#What are the names of the pokemon that belong to the trainer with trainerID 303?
SELECT tnr.trainerID, pks.name FROM pokemons pks
INNER JOIN pokemon_trainer tnr ON pks.id = tnr.pokemon_id
WHERE tnr.trainerID = 303;

#How many pokemon have a secondary type Poison
SELECT id FROM types WHERE name = "Poison";
#this returns 7
SELECT COUNT(id) FROM pokemons WHERE secondary_type = "7";

#What are all the primary types and how many pokemon have that type?
SELECT COUNT(pks.primary_type), tps.name FROM pokemons pks
INNER JOIN types tps ON tps.id = pks.primary_type GROUP BY pks.primary_type;

#How many pokemon at level 100 does each trainer with at least one level 100 pokemon have? (Hint: your query should not display a trainer
SELECT COUNT(pokemon_id) FROM pokemon_trainer WHERE pokelevel = 100 GROUP BY trainerID;

#How many pokemon only belong to one trainer and no other?
SELECT COUNT(ptr.pokemon_id), pks.name
FROM pokemon_trainer ptr
JOIN pokemons pks ON pks.id = ptr.pokemon_id
GROUP BY ptr.pokemon_id HAVING COUNT(ptr.pokemon_id) = 1;