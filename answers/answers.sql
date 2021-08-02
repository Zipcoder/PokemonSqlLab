#Part 2
SELECT NAME FROM types; 
SELECT NAME FROM Pokemons WHERE id = 45;
SELECT COUNT(*) FROM  Pokemons;
SELECT COUNT(*) FROM types;
SELECT COUNT(secondary_type) FROM Pokemons;
#Part 3
SELECT p.name, t.name
FROM pokemons p
JOIN types t
ON p.primary_type = t.id;

SELECT type.name
FROM pokemons p
JOIN types type
ON p.secondary_type = type.id 
WHERE p.name = 'Rufflet';

SELECT p.name, t.trainerID
FROM pokemons p
JOIN pokemon_trainer t
ON t.trainerID = 303
AND p.id = t.pokemon_id;

SELECT COUNT(*) FROM Pokemons
WHERE secondary_type = 7;

SELECT t.name, COUNT(primary_type)
FROM types t 
JOIN pokemons p
WHERE t.id = p.primary_type
GROUP BY t.name;

SELECT t.trainerID, COUNT(*)
FROM pokemon_trainer t
WHERE t.pokelevel = 100
GROUP BY t.trainerID;

SELECT p.name, COUNT(*)
FROM pokemon_trainer t
JOIN pokemons p
WHERE p.id = t.pokemon_id
GROUP BY p.name
HAVING COUNT(*) = 1;

SELECT p.name AS 'Pokemon Name' , t.trainerName AS 'Trainer Name', pt.pokelevel AS 'LEVEL', tp1.name AS 'Primary Type', tp2.name AS 'Secondary Type'
FROM pokemon_trainer pt
JOIN trainers t ON pt.trainerID = t.trainerID
JOIN pokemons p ON pt.pokemon_id = p.id
JOIN types tp1 ON p.primary_type = tp1.id
JOIN types tp2 ON p.secondary_type = tp2.id
ORDER BY (maxhp) DESC, pt.pokelevel DESC;






