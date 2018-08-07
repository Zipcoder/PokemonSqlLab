SELECT name, primary_type FROM pokemon.pokemons;
SELECT name, primary_type FROM pokemon.pokemons WHERE name = "Rufflet";
SELECT name FROM pokemon.pokemons JOIN pokemon.trainers ON id = pokemon_id WHERE trainerID = 303;
