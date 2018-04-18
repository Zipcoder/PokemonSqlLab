-- Part 1
SELECT name FROM pokemon.types;
SELECT name FROM pokemon.pokemons WHERE id = 45;
SELECT COUNT(*) FROM pokemon.pokemons;
SELECT COUNT(*) FROM pokemon.types;
SELECT COUNT(*) FROM pokemon.pokemons WHERE secondary_type IS NOT NULL;

-- Part 2
SELECT p.name, t.name FROM pokemons p JOIN types t ON p.primary_type = t.id;
SELECT p.name, t.name FROM pokemons p JOIN types t ON p.secondary_type = t.id WHERE p.name = 'Rufflet';
SELECT p.name FROM pokemons p JOIN pokemon_trainer pt ON p.id = pt.pokemon_id WHERE pt.trainerID = 303;
SELECT COUNT(*) FROM pokemons  p JOIN types t ON p.secondary_type = t.id WHERE t.name = 'Poison';