# What is each pokemons primary type
SELECT pokemons.name, types.name AS power1
 FROM pokemon.pokemons
 INNER JOIN pokemon.types 
ON pokemons.primary_type = types.id;

#What is Rufflet's secondary type
SELECT p.name, t.name
 FROM pokemons p 
JOIN types t 
ON p.secondary_type = t.id
 WHERE p.name = 'Rufflet';

# What are the names of the pokemon that belong to the trainer with ID 303
SELECT ptr.trainerID, p.name
 FROM pokemon_trainer ptr 
JOIN pokemons p
 ON p.id = ptr.pokemon_id
 WHERE ptr.trainerID = 303;

# How many pokemon have a secondary type Poison
SELECT t.name, COUNT(*)
 FROM types t 
JOIN pokemons p
 ON p.secondary_type = t.id
 WHERE t.name = 'Poison';

# What are all the primary types and how many pokemon have that type
SELECT t.name, COUNT(*) 
 FROM types t 
JOIN pokemons p
 ON p.primary_type = t.id
 GROUP BY t.name;

# How many pokemon at level 100 does each trainer with more than 1 level 100 have
SELECT ptr.pokelevel, COUNT(*) 
 FROM pokemon_trainer ptr
JOIN pokemons p
 ON p.id = ptr.pokemon_id
 GROUP BY ptr.trainerID, ptr.pokelevel
 HAVING ptr.pokelevel = 100;

# How many pokemon only belong to one trainer and no other
SELECT p.name, COUNT(*) FROM pokemon_trainer ptr JOIN pokemons p ON p.id = ptr.pokemon_id GROUP BY p.name HAVING COUNT(*)= 1;
SELECT COUNT(pokemon_id),p.name FROM pokemon_trainer ptr JOIN pokemons p ON p.id = ptr.pokemon_id GROUP BY pokemon_id HAVING COUNT(pokemon_id)=1;

