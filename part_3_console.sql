# What is each pokemon's primary type?
SELECT pokemons.name, types.name FROM pokemons INNER JOIN types ON pokemons.primary_type = types.id;

# What is Rufflet's secondary type?
SELECT pokemons.name, types.name FROM pokemons INNER JOIN types ON pokemons.secondary_type = types.id WHERE pokemons.name = 'Rufflet';

# What are the names of the pokemon that belong to the trainer with trainerID 303?
SELECT trainers.trainerID, trainers.trainername, pokemons.name FROM pokemon_trainer
  INNER JOIN trainers ON trainers.trainerID = pokemon_trainer.trainerID
  INNER JOIN pokemons ON pokemons.id = pokemon_trainer.pokemon_id
  WHERE pokemon_trainer.trainerID = 303;

# How many pokemon have a secondary type Poison?
SELECT COUNT(*) FROM pokemons INNER JOIN types ON pokemons.secondary_type = types.id WHERE types.name = 'poison';

# What are all the primary types and how many pokemon have that type?
SELECT types.name, COUNT(primary_type) FROM types INNER JOIN pokemons ON types.id = pokemons.primary_type GROUP BY primary_type;

# How many pokemon at level 100 does each trainer with at least one level 100 pokemon have? (Hint: your query should not display a trainer
SELECT COUNT(pokemon_id) FROM pokemon_trainer WHERE pokelevel = 100 GROUP BY trainerID HAVING COUNT(pokemon_id) > 1;

# Which pokemon only belong to one trainer and no other? (13, ask Wilhem)
SELECT p.name FROM pokemon_trainer pt JOIN pokemons p ON p.id = pt.pokemon_id GROUP BY pt.pokemon_id HAVING COUNT(trainerID) = 1;