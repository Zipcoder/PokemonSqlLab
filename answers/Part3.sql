#1 What is each pokemon's primary type?
--
SELECT 
       p.name AS Pokemon_Name, 
       t.name AS Primary_Type_Name
     FROM Pokemons p
     LEFT JOIN types t
     ON p.primary_type = t.id; 
     
#2 What is Rufflet's secondary type?
-- normal
SELECT
  p.name AS Pokemon_Name, 
  t.name AS Primary_Type_Name
FROM Pokemons p
LEFT JOIN types t
ON p.primary_type = t.id
WHERE p.name = "Rufflet";

#3 What are the names of the pokemon that belong to the trainer with trainerID 303?
-- | Wailord y Vileplum
SELECT
  name AS Pokemon_Name
FROM Pokemons p
WHERE EXISTS (SELECT 1 FROM pokemon_trainer pt WHERE pt.trainerID = 303 AND pt.pokemon_id = p.id);

#4 How many pokemon have a secondary type `Poison`
-- 31

   SELECT COUNT(secondary_type) FROM pokemons p JOIN types t ON p.secondary_type  = t.id WHERE t.name = 'Poison';

#5 What are all the primary types and how many pokemon have that type?
--
SELECT
  t.name,
  COUNT(p.primary_type) AS Count_Primary_Type
FROM Pokemons p
LEFT JOIN types t
ON p.primary_type = t.id
GROUP BY t.name, p.primary_type;

#6 How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? 
-- (Hint: your query should not display a trainer
--
SELECT
  trainerid, 
  COUNT(1) AS Count_Pokemon_Lvl100
FROM Pokemon_trainer
WHERE pokelevel = 100
GROUP BY trainerID;

#7 How many pokemon only belong to one trainer and no other?
-- 13
SELECT
  COUNT(pokemon_id) AS COUNT
  FROM (
    SELECT
       pokemon_id, 
       COUNT(trainerID) AS Count_One_Trainer
    FROM pokemon_trainer
    GROUP BY pokemon_id
    HAVING Count_One_Trainer = 1
) x; 

--------------------------- to see the names ----------------------
SELECT COUNT(pokemon_id), p.name FROM pokemon_trainer pt JOIN pokemons p ON pt.pokemon_id = p.id GROUP BY pokemon_id HAVING COUNT(pokemon_id) = 1;
