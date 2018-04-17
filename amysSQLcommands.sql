
use pokemon;
SELECT * from types;

create table trainers(trainerID int not null primary key,trainername text null);
ALTER TABLE pokemon.trainers MODIFY COLUMN trainername VARCHAR(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL;


//SELECT * FROM pokemon_trainer;

/* this we cut bc we arlready created the table

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
What is Rufflet's secondary type?
What are the names of the pokemon that belong to the trainer with trainerID 303?
How many pokemon have a secondary type Poison
What are all the primary types and how many pokemon have that type?
How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? (Hint: your query should not display a trainer
How many pokemon only belong to one trainer and no other?