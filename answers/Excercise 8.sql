#What are the names of the pokemon that belong to the trainer with trainerID 303?
select * from pokemon_trainer INNER JOIN pokemons ON  trainerID = 303 and pokemon_trainer.pokemon_id = pokemons.id;