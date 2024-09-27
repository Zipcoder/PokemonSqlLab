
use pokemon;
SELECT * from types;

create table trainers(trainerID int not null primary key,trainername text null);
ALTER TABLE pokemon.trainers MODIFY COLUMN trainername VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;


/* SELECT * FROM pokemon_trainer; */

/* this we cut bc we already created the table:

create table trainers(trainerID int not null primary key,trainername text null);

 */

Part 2:
What are all the types of pokemon that a pokemon can have?
SELECT name FROM pokemon.types;

What is the name of the pokemon with id 45?
SELECT name FROM pokemon.types WHERE id = 45;

How many pokemon are there?
SELECT COUNT(id) FROM pokemon.pokemons;

How many types are there?
SELECT COUNT(id) FROM pokemon.types;

How many pokemon have a secondary type?
SELECT COUNT(id) FROM pokemon.pokemons where secondary_type IS NOT NULL;


Part 3:
What is each pokemon's primary type?
/*print out these two fields from these two tables^ */
SELECT pokemons.name, types.name FROM pokemons INNER JOIN types ON pokemons.primary_type=types.id;
// WRONG =>SELECT pokemons.name, types.name FROM pokemon.pokemons INNER JOIN pokemon.types ON pokesmons.primary_type=types.id;


What is Rufflet's secondary type?
SELECT pokemons.name, types.name FROM pokemons INNER JOIN types ON pokemons.secondary_type=types.id WHERE pokemons.name = 'Rufflet';
SUCK ITTTTTTT

What are the names of the pokemon that belong to the trainer with trainerID 303?
SELECT pokemons.name
FROM pokemons
INNER JOIN pokemon_trainer
ON pokemons.id=pokemon_trainer.pokemon_id
WHERE trainerID = 303;

How many pokemon have a secondary type Poison?
SELECT COUNT(*)
FROM types
INNER JOIN pokemons
ON types.id=pokemons.secondary_type
WHERE types.name = 'Poison';

What are all the primary types and how many pokemon have that type?
SELECT types.name, COUNT(*)
FROM types
INNER JOIN pokemons
ON types.id =pokemons.primary_type
GROUP BY primary_type;

How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? (Hint: your query should not display a trainer
SELECT COUNT(*)
FROM pokemon_trainer
WHERE pokelevel = 100
GROUP BY trainerID;

How many pokemon only belong to one trainer and no other?
SELECT COUNT(pokemon_trainer.pokemon_id)
FROM pokemon_trainer
GROUP BY pokemon_id HAVING COUNT(pokemon_id) = 1;
