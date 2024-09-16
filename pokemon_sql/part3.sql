#What is each pokemon's primary type?
SELECT P.name, T.name AS primary_type_name, P.primary_type AS primary_type_id
FROM pokemons AS P
JOIN types AS T
ON P.primary_type = T.id
ORDER BY P.name ASC;

#What is Rufflet's secondary type?
SELECT P.name, T.name AS secondary_type_name, P.secondary_type AS secondary_type_id
FROM pokemons AS P
JOIN types AS T
ON P.primary_type = T.id
WHERE P.name = 'Rufflet';

#What are the names of the pokemon that belong to trainer 303?
SELECT P.name, PT.trainerID
FROM pokemons AS P JOIN pokemon_trainer AS PT
ON PT.pokemon_id = P.id
WHERE PT.trainerID = 303;

#How many pokemon have a secondary type?
SELECT COUNT(p.secondary_type)
FROM pokemons AS p JOIN types as t
ON p.secondary_type = t.id
WHERE t.name = 'Poison';

#What are all the primary types and how many pokemon have that type
SELECT p.primary_type, t.name, COUNT(p.id)
FROM types AS t JOIN pokemons AS p
ON p.primary_type = t.id
GROUP BY t.id;


#How many pokemon at level 100 does each trainer with at least one level 100 pokemon have? ##Did this twice
SELECT COUNT(pt.pokelevel) AS COUNT_FOR_POKELEVEL_100, pt.trainerID
FROM pokemon_trainer AS pt JOIN trainers as t
ON pt.trainerID = t.trainerID
WHERE pt.pokelevel = 100
GROUP BY pt.trainerID;

SELECT trainerID, COUNT(pokelevel)
FROM pokemon_trainer
WHERE pokelevel = 100
GROUP BY trainerID;

#How many pokemon only belong to one trainer and no other?
SELECT COUNT(trainerID) AS COUNT, pokemon_id
FROM pokemon_trainer
GROUP BY pokemon_id
HAVING COUNT = 1;

