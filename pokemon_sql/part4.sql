USE pokemon;

#Directions: Write a query that returns the following columns:
#Pokemon Name	Trainer Name	Level	Primary Type	Secondary Type
#Pokemon's name	Trainer's name	Current Level	Primary Type Name	Secondary Type Name

SELECT pks.name as 'Pokemon Name', tnr.trainername as 'Trainer Name', pktr.pokelevel as 'Level', typ1.name as 'Primary Type', typ2.name as 'Secondary Type'
FROM pokemon_trainer pktr
INNER JOIN pokemons pks ON pks.id = pktr.pokemon_id
INNER JOIN trainers tnr ON tnr.trainerID = pktr.trainerID
INNER JOIN types typ1 ON typ1.id = pks.primary_type
LEFT OUTER JOIN types typ2 ON typ2.id = pks.secondary_type
WHERE pokelevel = 100
ORDER BY pokelevel DESC;

#A pokemon's competitive strength comes from it's position in a metagame.
#The best trainer should have a team that is well positioned against what they are most likely
#to face among pokemon's upper echelon.
#This query:
SELECT COUNT(pks.primary_type), typ1.name as 'Primary Type'
FROM pokemon_trainer pktr
INNER JOIN pokemons pks ON pks.id = pktr.pokemon_id
INNER JOIN trainers tnr ON tnr.trainerID = pktr.trainerID
INNER JOIN types typ1 ON typ1.id = pks.primary_type
LEFT OUTER JOIN types typ2 ON typ2.id = pks.secondary_type
WHERE pokelevel = 100
GROUP BY pks.primary_type
ORDER BY COUNT(pks.primary_type) DESC;
#Shows that the most prominent primary type among level 100 pokemon is Water. So, we should
#be looking for level 100 pokemon with good matchups against water.
#This query:
SELECT pks.name as 'Pokemon Name', tnr.trainername as 'Trainer Name', pktr.pokelevel as 'Level', typ1.name as 'Primary Type', typ2.name as 'Secondary Type'
FROM pokemon_trainer pktr
INNER JOIN pokemons pks ON pks.id = pktr.pokemon_id
INNER JOIN trainers tnr ON tnr.trainerID = pktr.trainerID
INNER JOIN types typ1 ON typ1.id = pks.primary_type
LEFT OUTER JOIN types typ2 ON typ2.id = pks.secondary_type
WHERE pokelevel = 100
AND typ1.name = "Electric"
  OR typ1.name = "Grass"
ORDER BY pokelevel DESC;
#Shows the trainer Cool♀ has a wealth of high level Grass and Electric types, making her
#Well positioned against the most prevalent competitive threat.