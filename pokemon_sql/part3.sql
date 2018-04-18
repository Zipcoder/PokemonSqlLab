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


--How many pokemon have a secondary type Poison


--What are all the primary types and how many pokemon have that type?


--How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? (Hint: your query should not display a trainer


--How many pokemon only belong to one trainer and no other?
SELECT COUNT(*), pokemon_id
FROM pokemon.pokemon_trainer
GROUP BY pokemon_trainer.pokemon_id
HAVING COUNT(*) = 1;