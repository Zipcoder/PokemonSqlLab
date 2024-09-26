# How many pokemon at level 100 does each trainer with at least one level 100 pokemone have? (Hint: your query should not display a trainer
SELECT Distinct(trainers.trainername) AS 'Trainers Name', COUNT(*) AS '# lvl 100 Pokemon' FROM trainers
INNER JOIN pokemon_trainer ON pokemon_trainer.trainerID = trainers.trainerID WHERE pokelevel > 99 GROUP BY pokemon_trainer.trainerID 
ORDER BY COUNT(*) DESC;