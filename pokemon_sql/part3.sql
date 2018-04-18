-- Part 3: Joins and Groups
--
-- Directions: Write a sql query or sql queries that can answer the following questions
--
-- What is each pokemon's primary type?
SELECT name,primary_type
FROM pokemon.pokemons
GROUP BY name,primary_type

-- What is Rufflet's secondary type?
SELECT name,secondary_type
FROM pokemon.pokemons
WHERE name='Rufflet'

-- What are the names of the pokemon that belong to the trainer with trainerID 303?
SELECT name
FROM pokemon.pokemons
JOIN pokemon.pokemon_trainer ON pokemon_id = id
WHERE trainerID = 303
-- How many pokemon have a secondary type Poison
 SELECT COUNT(secondary_type)
FROM pokemon.pokemons
WHERE secondary_type = 7
-- What are all the primary types and how many pokemon have that type?
SELECT pokemons.name , COUNT(pokemons.id)
FROM pokemon.types JOIN pokemon.pokemons ON primary_type =pokemons.id
GROUP BY pokemons.name
-- How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? (Hint: your query should not display a trainer
SELECT trainerID, COUNT(pokelevel) AS 'level_100_pokemon'
FROM pokemon.pokemon_trainer
WHERE pokelevel = 100
GROUP BY trainerID;

-- How many pokemon only belong to one trainer and no other?