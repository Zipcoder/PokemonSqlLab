# Adding together the stats, ordering descending so highest overall is at top
SELECT p.name AS 'Pokemon Name',
t.trainername AS 'Trainer Name',
pt.pokelevel AS 'Level',
t1.name AS 'Primary Type',
t2.name AS 'Secondary Type'
FROM pokemon_trainer pt
JOIN trainers t ON pt.trainerID = t.trainerID
JOIN pokemons p ON pt.pokemon_id = p.id
JOIN types t1 ON p.primary_type = t1.id
JOIN types t2 ON p.secondary_type = t2.id
ORDER BY (maxhp + attack + defense + spatk + spdef + speed) DESC, pt.pokelevel DESC;