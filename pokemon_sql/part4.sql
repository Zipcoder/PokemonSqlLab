USE pokemon;

#Directions: Write a query that returns the following collumns:
#Pokemon Name	Trainer Name	Level	Primary Type	Secondary Type
#Pokemon's name	Trainer's name	Current Level	Primary Type Name	Secondary Type Name

SELECT pks.name as 'Pokemon Name', tnr.trainername as 'Trainer Name', pktr.pokelevel as 'Level', typ1.name as 'Primary Type', typ2.name as 'Secondary Type'
FROM pokemon_trainer pktr
INNER JOIN pokemons pks ON pks.id = pktr.pokemon_id
INNER JOIN trainers tnr ON tnr.trainerID = pktr.trainerID
INNER JOIN types typ1 ON typ1.id = pks.primary_type
INNER JOIN types typ2 ON typ2.id = pks.secondary_type
ORDER BY pokelevel DESC;