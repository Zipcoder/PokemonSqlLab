--What is each pokemon's primary type?
  SELECT pokemon.pokemons.name, pokemon.types.name
  FROM pokemon.types, pokemon.pokemons
  WHERE primary_type = types.id;

  --OR

  SELECT  pokemon.pokemons.name, pokemon.types.name
  FROM pokemon.pokemons
  INNER JOIN types ON primary_type = types.id;

--What is Rufflet's secondary type?
  SELECT  pokemon.pokemons.name, pokemon.types.name
  FROM pokemon.pokemons
  INNER JOIN pokemon.types ON secondary_type = pokemon.types.id
  WHERE pokemon.pokemons.name = 'Rufflet';

--What are the names of the pokemon that belong to the trainer with trainerID 303?
  SELECT pokemon.pokemons.name, pokemon_trainer.trainerID
  FROM pokemon.pokemon_trainer
  INNER JOIN pokemons ON pokemon.pokemons.id = pokemon_trainer.pokemon_id
  WHERE pokemon.pokemon_trainer.trainerID= '303';

--How many pokemon have a secondary type Poison
  SELECT COUNT(pokemons.secondary_type)
  FROM pokemon.pokemons
  INNER JOIN types ON types.id = pokemons.secondary_type
  WHERE pokemon.types.name= 'poison';

--What are all the primary types and how many pokemon have that type?
  SELECT pokemon.types.name, COUNT(primary_type)
  FROM pokemon.pokemons
  INNER JOIN pokemon.types ON pokemon.types.id = pokemons.primary_type
  GROUP BY pokemon.types.id;
  
--How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? (Hint: your query should not display a trainer
  SELECT pokemon_trainer.trainerID , COUNT(pokelevel)
  FROM pokemon.pokemon_trainer
  WHERE pokelevel = '100'
  GROUP BY pokemon_trainer.trainerID;

--How many pokemon only belong to one trainer and no other?
  SELECT COUNT(*), pokemon_id
  FROM pokemon.pokemon_trainer
  GROUP BY pokemon_trainer.pokemon_id
  HAVING COUNT(*) = 1;