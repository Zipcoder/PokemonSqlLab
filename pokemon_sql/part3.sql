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