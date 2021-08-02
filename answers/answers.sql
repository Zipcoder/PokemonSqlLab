# PART 2 
SELECT NAME FROM types;
SELECT NAME FROM pokemons WHERE id = 45;
SELECT COUNT(*) FROM pokemons;
SELECT COUNT(*) FROM types;
SELECT COUNT(secondary_type) FROM pokemons;
# PART 3
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
ON t.trainerID = 303
AND p.id = t.pokemon_id;

SELECT COUNT(*) FROM pokemons
WHERE secondary_type = 7;

SELECT COUNT(*), t.name
FROM types t
JOIN pokemons p
WHERE t.id = p.primary_type
GROUP BY t.name;

SELECT COUNT(*), t.trainerID
FROM pokemon_trainer t
WHERE t.pokelevel = 100
GROUP BY t.trainerID;

SELECT COUNT(*), p.name
FROM pokemon_trainer t
JOIN pokemons p
WHERE p.id = t.pokemon_id
GROUP BY p.name
HAVING COUNT(*) = 1;

# PART 4
SELECT p.name AS 'Pokemon Name', 
t.trainerName AS 'Trainer Name', 
pt.pokelevel AS 'Level', 
t1.name AS 'Primary Type', 
t2.name AS 'Secondary Type'
FROM pokemon_trainer pt
JOIN trainers t ON pt.trainerID = t.trainerID
JOIN pokemons p ON pt.pokemon_id = p.id
JOIN types t1 ON p.primary_type = t1.id
JOIN types t2 ON p.secondary_type = t2.id
ORDER BY (maxhp + attack + defense + spatk + spdef + speed) DESC, pt.pokelevel DESC;
