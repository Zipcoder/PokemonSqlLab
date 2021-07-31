# What are the names of the pokemon that belong to the trainer with trainerID 303?
SELECT trainerID, pokemons.name AS 'Pokemon Name' 
FROM pokemon_trainer 
INNER JOIN pokemons
ON  pokemon_trainer.pokemon_id = pokemons.id 
WHERE pokemon_trainer.trainerID 
LIKE '303';