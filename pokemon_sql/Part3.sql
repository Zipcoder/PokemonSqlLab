--What is each pokemon's primary type?
SELECT pokemons.name, types.name
FROM pokemon.types, pokemon.pokemons
WHERE primary_type = types.id;

SELECT pokemons.name, types.name
FROM pokemons
INNER JOIN types ON primary_type = types.id;

--What is Rufflet's secondary type?
SELECT pokemons.name, types.name
FROM pokemons
INNER JOIN types ON secondary_type = types.id
WHERE pokemons.name ='Rufflet';

--What are the names of the pokemon that belong to the trainer with trainerID 303?

SELECT trainers.trainerID, trainers.trainername, pokemon_trainer.pokemon_id, pokemons.name
FROM trainers
INNER JOIN pokemon_trainer ON  trainers.trainerID = pokemon_trainer.trainerID
INNER JOIN pokemons ON pokemon_trainer.pokemon_id = pokemons.id
WHERE trainers.trainerID = 303;

--How many pokemon have a secondary type Poison?
SELECT Count(pokemons.secondary_type)
FROM pokemons
INNER JOIN types ON secondary_type = types.id
WHERE types.name ='Poison';

--What are all the primary types and how many pokemon have that type?
SELECT Count(pokemons.primary_type), types.name
FROM pokemons
INNER JOIN types ON primary_type = types.id
GROUP BY types.id;

--How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? (Hint: your query should not display a trainer
SELECT pokemon_trainer.trainerID, COUNT(pokelevel)
FROM pokemon_trainer
WHERE pokemon_trainer.pokelevel = '100'
GROUP BY pokemon_trainer.trainerID;


--How many pokemon only belong to one trainer and no other?
SELECT pokemon_id, COUNT(pokemon_id)
FROM pokemon_trainer
GROUP BY pokemon_id
HAVING COUNT(pokemon_id) = 1;