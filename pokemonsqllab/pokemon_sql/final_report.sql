#Directions: Write a query that returns the following collumns:
#Pokemon Name	Trainer Name	Level	Primary Type	Secondary Type
#Pokemon's name	Trainer's name	Current Level	Primary Type Name	Secondary Type Name
SELECT pokemons.name AS "Pokemon Name",
trainers.trainername AS "Trainer Name",
pokemon_trainer.pokelevel AS "Level",
t1.name AS "Primary Type",
t2.name AS "Secondary Type"
FROM pokemon.pokemons
JOIN pokemon.pokemon_trainer
ON pokemons.id = pokemon_trainer.pokemon_id
JOIN pokemon.trainers
ON pokemon_trainer.trainerID = trainers.trainerID
JOIN pokemon.types t1
ON pokemons.primary_type = t1.id
JOIN pokemon.types t2
ON pokemons.secondary_type = t2.id