-- Part 2
SELECT name FROM pokemon.types;

SELECT name FROM pokemon.pokemons WHERE id = 45;

SELECT COUNT(*) FROM pokemon.pokemons;

SELECT COUNT(*) FROM pokemon.types;

SELECT COUNT(*) FROM pokemon.pokemons WHERE secondary_type IS NOT NULL;

-- Part 3
SELECT p.name, t.name FROM pokemons p JOIN types t ON p.primary_type = t.id;

SELECT p.name, t.name FROM pokemons p JOIN types t ON p.secondary_type = t.id WHERE p.name = 'Rufflet';

SELECT p.name FROM pokemons p JOIN pokemon_trainer pt ON p.id = pt.pokemon_id WHERE pt.trainerID = 303;

SELECT COUNT(*) FROM pokemons  p JOIN types t ON p.secondary_type = t.id WHERE t.name = 'Poison';

SELECT t.name AS 'primary type', COUNT(p.id) FROM types t JOIN pokemons p ON p.primary_type = t.id GROUP BY t.name;

SELECT trainerID, COUNT(pokelevel) AS 'lvl 100 pokemon' FROM pokemon_trainer WHERE pokelevel = 100 GROUP BY trainerID;

SELECT COUNT(1) AS "pokemon with one trainer" FROM (SELECT p.name, COUNT(p_t.trainerID)
    FROM pokemons p JOIN pokemon_trainer p_t ON p.id = p_t.pokemon_id GROUP BY p.name HAVING COUNT(p_t.trainerID) = 1) a;

