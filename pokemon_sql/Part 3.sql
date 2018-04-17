SELECT pokemon.pokemons.name, pokemon.types.name
FROM pokemon.pokemons
STRAIGHT_JOIN pokemon.types ON types.id=pokemons.primary_type;

SELECT pokemon.pokemons.name, pokemon.types.name
FROM pokemon.pokemons
STRAIGHT_JOIN pokemon.types ON types.id=pokemons.primary_type
WHERE pokemons.name = 'Rufflet';

SELECT pokemon.pokemons.name, pokemon_trainer.trainerID
FROM pokemon.pokemon_trainer
INNER JOIN pokemons ON pokemon.pokemons.id = pokemon_trainer.pokemon_id
WHERE pokemon.pokemon_trainer.trainerID= '303';

SELECT COUNT(pokemons.secondary_type)
FROM pokemon.pokemons
INNER JOIN types ON types.id = pokemons.secondary_type
WHERE pokemon.types.name= 'poison';

SELECT pokemon.types.name, COUNT(primary_type)
FROM pokemon.pokemons
INNER JOIN pokemon.types ON pokemon.types.id = pokemons.primary_type
GROUP BY pokemon.types.id;

SELECT COUNT(pokelevel)
FROM pokemon.pokemon_trainer
WHERE pokelevel = '100';

SELECT pokemon_trainer.trainerID , COUNT(pokelevel)
FROM pokemon.pokemon_trainer
WHERE pokelevel = '100'
GROUP BY pokemon_trainer.trainerID;

SELECT  pokemon_id , COUNT(pokemon_id)
FROM pokemon_trainer
GROUP BY pokemon_id
HAVING COUNT(pokemon_id) = 1;