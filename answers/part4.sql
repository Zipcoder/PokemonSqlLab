# Final Report , query sorted by trainer with highest pokemon level
SELECT p.name PokemonName , tr.trainername , ptr.pokelevel Level , t.name PrimaryType , ty.name SecondaryType 
FROM pokemons p 
 JOIN pokemon_trainer ptr ON p.id = pokemon_id 
 JOIN trainers tr ON tr.trainerID = ptr.trainerID
 LEFT JOIN types t ON p.primary_type = t.id
 LEFT JOIN types ty ON p.secondary_type = ty.id
 ORDER BY ptr.pokelevel DESC;
