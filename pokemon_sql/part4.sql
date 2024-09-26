
--The SELECT statement to display the desired data
SELECT p.name PokeName, t.trainername TrainerName, pt.pokelevel Level, tp.name PrimaryType, ts.name SecondaryType
FROM pokemon_trainer pt
JOIN pokemons p ON pt.pokemon_id = p.id
JOIN types tp ON p.primary_type = tp.id
JOIN types ts ON p.secondary_type = ts.id
JOIN trainers t ON pt.trainerID = t.trainerID

--The SELECT statement to choose the "Strongest" trainer
