# How many pokemon only belong to one trainer and no other?
SELECT COUNT(pokemon_trainer.trainerID), pokemons.name
FROM pokemon_trainer 
INNER JOIN pokemons
ON pokemon_trainer.pokemon_id = pokemons.id
GROUP BY pokemon_id
HAVING COUNT(pokemon_trainer.trainerID) = 1;

Select Avg(pokemon_trainer.pokelevel)
from pokemont_trainer
Group By