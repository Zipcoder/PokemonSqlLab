# Trainers are ranked by descending number of broken af fairy-types used
SELECT p.name AS 'Pokemon Name',
  t.trainername AS 'Trainer Name',
  pt.pokelevel AS 'Level',
  typ.name AS 'Primary Type',
  tys.name AS 'Secondary Type',
  fc.c AS 'Fairy Types Used'
FROM pokemon_trainer pt
JOIN trainers t ON t.trainerID = pt.trainerID
JOIN pokemons p ON p.id = pt.pokemon_id
JOIN types typ ON p.primary_type = typ.id
JOIN types tys ON p.secondary_type = tys.id
JOIN (
       SELECT pokemon_trainer.trainerID AS pt_id, COUNT(*) AS c
       FROM pokemon_trainer
         INNER JOIN pokemons ON pokemon_id = pokemons.id
         INNER JOIN types ON pokemons.primary_type = types.id OR pokemons.secondary_type = types.id
       WHERE types.name = 'fairy'
       GROUP BY pokemon_trainer.trainerID
     ) fc ON pt.trainerID = pt_id
ORDER BY Level DESC, fc.c DESC;

# Trainers are ranked in descending number of Psyducks used
SELECT p.name AS 'Pokemon Name',
  t.trainername AS 'Trainer Name',
  pt.pokelevel AS 'Level',
  typ.name AS 'Primary Type',
  tys.name AS 'Secondary Type',
  fc.c AS 'Fairy Types Used'
FROM pokemon_trainer pt
JOIN trainers t ON t.trainerID = pt.trainerID
JOIN pokemons p ON p.id = pt.pokemon_id
JOIN types typ ON p.primary_type = typ.id
JOIN types tys ON p.secondary_type = tys.id
JOIN (
       SELECT pokemon_trainer.trainerID AS pt_id, COUNT(*) AS c
       FROM pokemon_trainer
       WHERE pokemon_trainer.pokemon_id = '332'
       GROUP BY pokemon_trainer.trainerID
     ) fc ON pt.trainerID = pt_id
ORDER BY fc.c DESC, Level DESC;

# testing
SELECT DISTINCT t.trainername, COUNT(*) AS 'psyducks used'
FROM pokemon_trainer pt
  JOIN pokemons p ON pt.pokemon_id = p.id
  JOIN trainers t ON t.trainerID = pt.trainerID
GROUP BY t.trainername;
