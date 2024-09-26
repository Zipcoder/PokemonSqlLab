USE pokemon;
-- Part 4: Final Report

-- Directions: Write a query that returns the following collumns:
-- pt (pokemon trainer), p (pokemons), tr (trainers), t (types)


SELECT p.name            AS 'Pokemon Name',
             tr.trainername    AS 'Trainer Name',
             pt.pokelevel      AS 'Level',
             t.name            AS 'Primary Type',
             t.name            AS 'Secondary Type'
            FROM trainers tr
               INNER JOIN pokemon_trainer pt ON tr.trainerID = pt.trainerID
               INNER JOIN pokemons p ON pt.pokemon_id = p.id
               INNER JOIN types t ON p.primary_type = t.id = 'T1'
               INNER JOIN types t2 on p.secondary_type = t.id = 't2'
    ORDER BY pt.pokelevel DESC;

-- Sort the data by finding out which trainer has the strongest pokemon so that this will act as a ranking of strongest to weakest trainer.
-- You may interpret strongest in whatever way you want, but you will have to explain your decision.


SELECT trainername,pt.trainerID, SUM(pt.pokelevel) AS 'Total Level', AVG(attack) AS 'Avg Attack'
FROM trainers tr INNER JOIN pokemon_trainer pt on tr.trainerID = pt.trainerID
WHERE pokelevel = 100
GROUP BY trainername, pt.trainerID
ORDER BY SUM(pt.pokelevel) DESC, AVG(attack) DESC;
-- Myth Trainer Inity with trainerID 8044 has 6 pokemon who are level 100 AND has the highest average attack of 278.33.
-- therefore he (or she) has the strongest pokemon

--

-- practice statement
SELECT pokemon.pokemon_trainer.trainerID AS 'Trainer Name', count(*)
FROM pokemon.pokemon_trainer
WHERE pokemon_trainer.pokelevel > 99
GROUP BY pokemon.pokemon_trainer.trainerID
ORDER BY count(*) DESC;




