/*Part 3*/
-- What is each pokemon's primary type?
SELECT t.name, tm.name FROM pokemon.pokemons t JOIN pokemon.types tm ON t.primary_type = tm.id;
-- What is Rufflet's secondary type?
SELECT t.name FROM pokemon.types t JOIN pokemon.pokemons pkmn ON pkmn.secondary_type = t.id WHERE pkmn.name = "Rufflet";
-- What are the names of the pokemon that belong to the trainer with trainerID 303?
SELECT pkmn.name FROM pokemon.pokemons pkmn JOIN pokemon.pokemon_trainer t ON pkmn.id = t.pokemon_id WHERE t.trainerID = 303;
-- How many pokemon have a secondary type poison?
SELECT COUNT(*) AS "Secondary type is poison" FROM pokemon.pokemons pkmn JOIN pokemon.types t ON pkmn.secondary_type = t.id WHERE t.name = "poison";
-- What are all the primary types and how many pokemon have that type?
SELECT t.name, COUNT(pkmn.id) FROM  pokemon.types t JOIN pokemon.pokemons pkmn ON pkmn.primary_type = t.id GROUP BY t.id;
-- How many pokemon at level 100 does each trainer with at least one level 100 pokemon have?
SELECT COUNT(*) FROM pokemon.pokemon_trainer pt WHERE pokelevel = 100 GROUP BY pt.trainerID;
-- How many pokemon only belong to one trainer and no other?
select SUM(count) from (select count(pokemon_id) as count from pokemon.pokemon_trainer group by pokemon_id having count(pokemon_id) =1) as pokemon;