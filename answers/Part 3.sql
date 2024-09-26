USE pokemon;
-- What is each pokemon's primary type?
SELECT name, primary_type
FROM pokemon.pokemons;
-- What is Rufflet's secondary type?
SELECT secondary_type
FROM pokemon.pokemons
WHERE name = 'Rufflet';
-- What are the names of the pokemon that belong to the trainer with trainerID 303?
SELECT pokemon.pokemons.name
FROM pokemon.pokemon_trainer INNER JOIN pokemon.pokemons
ON pokemon_trainer.pokemon_id = pokemons.id
WHERE pokemon_trainer.trainerID = 303;
-- How many pokemon have a secondary type Poison
SELECT count(pokemon.pokemons.name)
FROM pokemon.pokemons INNER JOIN pokemon.types
ON pokemon.pokemons.secondary_type = pokemon.types.id
WHERE pokemon.types.name = 'Poison';

-- What are all the primary types and how many pokemon have that type?
SELECT pokemon.types.name, count(*)
FROM pokemon.pokemons INNER JOIN pokemon.types
ON pokemon.pokemons.primary_type = pokemon.types.id
GROUP BY pokemon.types.name;
-- How many pokemon at level 100 does each trainer with at least one level 100 pokemon have? (Hint: your query should not display a trainer
SELECT tr.trainername AS 'Trainer Name',
       COUNT(*) AS '# lvl 100 Pokemon'
FROM pokemon_trainer pt INNER JOIN trainers tr on pt.trainerID = tr.trainerID
WHERE pokelevel = 100
GROUP BY pt.trainerID
ORDER BY COUNT(*) DESC;-- How many pokemon only belong to one trainer and no other?
SELECT COUNT(DISTINCT pokemon.pokemon_trainer.pokemon_id)
FROM pokemon.pokemon_trainer;



