SELECT name
 FROM Types;

SELECT name 
FROM pokemons 
WHERE ID = 45;

SELECT COUNT(name) 
FROM pokemons;

SELECT COUNT(*)
FROM types;

SELECT COUNT(secondary_type)
FROM pokemons;

SELECT p.name, t.name
FROM pokemons p
JOIN types t
ON p.primary_type = t.id;

SELECT p.name, t.name
FROM pokemons p
JOIN types t
ON p.secondary_type = t.id
WHERE p.name = 'Rufflet';

SELECT p.name, t.trainerID
FROM pokemons p
JOIN pokemon_trainer t
ON t.trainerID = 303 AND p.id = t.pokemon_id;

SELECT COUNT(*)
FROM pokemons
WHERE secondary_type = '7';

SELECT t.name, COUNT(primary_type)
FROM types t
JOIN pokemons p
WHERE t.id = p.primary_type
GROUP BY t.name;

SELECT t.trainerID, COUNT(trainerID)
FROM pokemon_trainer t
WHERE t.pokelevel = 100
GROUP BY t.trainerID;

SELECT p.name
FROM pokemons p
JOIN pokemon_trainer t
WHERE p.id = t.pokemon_id
GROUP BY p.name
HAVING COUNT(t.pokemon_id) = 1;

SELECT 
p.name AS 'Pokemon Name',
 t.trainername AS 'Trainer Name', 
 pt.pokelevel AS 'Level',
 tp.name AS 'Primary Type', 
 tp2.name AS 'Secondary Type'
FROM pokemon_trainer pt
JOIN trainers t ON pt.trainerID = t.trainerID
JOIN pokemons p ON pt.pokemon_id = p.id
JOIN types tp ON p.primary_type = tp.id
JOIN types tp2 ON p.secondary_type = tp2.id
ORDER BY (maxhp + attack + defense + spatk + spdef + speed) DESC, pt.pokelevel DESC;





