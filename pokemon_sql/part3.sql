--#What is each pokemon's primary type?
SELECT p.name, t.name FROM pokemons p JOIN types t ON p.primary_type=t.id;

--#What is Rufflet's secondary type?
SELECT p.name, t.name secondary_type FROM pokemons p JOIN types t ON p.secondary_type = t.id WHERE p.name = 'Rufflet';

--What are the names of the pokemon that belong to the trainer with trainerID 303?
SELECT p.name FROM pokemons p JOIN pokemon_trainer pt ON p.id = pt.pokemon_id WHERE pt.trainerID = 303;

--#How many pokemon have a secondary type Poison?
SELECT DISTINCT COUNT(p.secondary_type) FROM pokemons p JOIN types t ON t.id = p.secondary_type WHERE t.name = 'Poison';

--What are all the primary types and how many pokemon have that type?
SELECT COUNT(p.primary_type), t.name FROM types t JOIN pokemons p ON p.primary_type = t.id GROUP BY t.name;

--How many pokemon at level 100 does each trainer with at least one level 100 pokemon have?
SELECT COUNT(pokemon_id), trainerID FROM pokemon_trainer WHERE pokelevel=100 GROUP BY trainerID;

--How many pokemon only belong to one trainer and no other?
SELECT DISTINCT COUNT(trainerID), pokemon_id FROM pokemon_trainer GROUP BY pokemon_id HAVING COUNT(*) = 1;