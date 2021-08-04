# What are all the types of pokemon that a pokemon can have?
SELECT name FROM types;

# What is the name of the pokemon with id 45?
SELECT name FROM pokemons where id = 45;

# How many pokemon are there?
SELECT COUNT(*) FROM pokemons;

# How many types are there?
SELECT COUNT(*) FROM types;

# How many pokemon have a secondary type?
SELECT COUNT(*) FROM pokemons WHERE secondary_type IS not null;
SELECT COUNT(secondary_type) From pokemons;

# What is each pokemon's primary type?
SELECT p.name , t.name FROM pokemons p JOIN types t ON p.primary_type = t.id;

# What is Rufflet's secondary type?
SELECT p.name, t.name FROM pokemons p JOIN types t ON p.secondary_type = t.id WHERE p.name = 'Rufflet';

# What are the names of the pokemon that belong to the trainer with trainerID 303?
SELECT p.name, pt.trainerID FROM pokemons p JOIN pokemon_trainer pt ON p.id = pt.pokemon_ID WHERE pt.trainerID = 303;

# How many pokemon have a secondary type Poison
SELECT COUNT(secondary_type) FROM pokemons WHERE secondary_type = 7;

# What are all the primary types and how many pokemon have that type?
SELECT t.name, COUNT(*) FROM pokemons p JOIN types t ON t.id = p.primary_type GROUP BY t.name;

# How many pokemon at level 100 does each trainer with at least one level 100 pokemone have?
SELECT pt.trainerID, COUNT(*) FROM pokemon_trainer pt WHERE pt.pokelevel = 100 GROUP BY pt.trainerID;

# How many pokemon only belong to one trainer and no other?
SELECT p.name FROM pokemons p JOIN pokemon_trainer pt ON p.id = pt.pokemon_ID GROUP BY p.name HAVING COUNT(*) = 1;


# Sort the data by finding out which trainer has the strongest pokemon so that this will act as a ranking of strongest to weakest trainer.
SELECT p.name AS 'Pokemon Name', 
tr.trainername AS 'Trainer Name', 
pt.pokelevel AS 'Level', 
tp.name AS 'Primary Type', 
tp2.name AS 'Secondary Type' 
FROM pokemon_trainer pt 
JOIN trainers tr ON pt.trainerID = tr.trainerID
JOIN pokemons p ON pt.pokemon_id = p.id
JOIN types tp ON p.primary_type = tp.id
JOIN types tp2 ON p.secondary_type = tp2.id
ORDER BY (spatk + speed + maxhp) DESC, pt.pokelevel DESC;

# Sorted by highest level as well as the most special attack, the highest speed, and the most HP for a quick strike with power!