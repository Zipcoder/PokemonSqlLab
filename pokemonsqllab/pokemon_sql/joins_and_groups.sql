--What is each pokemon's primary type?
SELECT pokemons.name, types.name FROM pokemon.pokemons JOIN pokemon.types ON pokemons.primary_type = types.id;
--What is Rufflet's secondary type?
SELECT pokemons.name, types.name FROM pokemon.pokemons JOIN pokemon.types ON pokemons.primary_type = types.id WHERE pokemons.name = "Rufflet";
--What are the names of the pokemon that belong to the trainer with trainerID 303?
SELECT name, trainerID FROM pokemon.pokemons JOIN pokemon.pokemon_trainer ON id = pokemon_id WHERE trainerID = 303;
--How many pokemon have a secondary type Poison
SELECT COUNT(pokemons.name) FROM pokemon.pokemons JOIN pokemon.types ON pokemons.secondary_type = types.id WHERE types.name = "Poison";
--What are all the primary types and how many pokemon have that type?
SELECT types.name, COUNT(types.name) FROM pokemon.pokemons JOIN pokemon.types ON pokemons.primary_type = types.id GROUP BY types.name;
--How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? (Hint: your query should not display a trainer
SELECT COUNT(pokemon_trainer.pokelevel), pokemon_trainer.trainerID, trainers.trainername
FROM pokemon.pokemon_trainer
  JOIN pokemon.trainers
  ON pokemon_trainer.trainerID = trainers.trainerID
WHERE pokemon_trainer.pokelevel = 100
GROUP BY pokemon_trainer.trainerID;
--How many pokemon only belong to one trainer and no other?
SELECT COUNT(pokemon_id)
FROM pokemon_trainer
WHERE pokemon_id in (
SELECT pokemon_id
FROM pokemon_trainer
GROUP BY pokemon_id
HAVING COUNT(pokemon_trainer.trainerID) = 1);