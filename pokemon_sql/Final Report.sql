Select p.name as 'Pokemon Name', t.trainername as 'Trainer Name', pt.pokelevel as 
'Pokemon Level', t1.name as 'Primary Type', t2.name as 'Secondary Type'
from pokemon_trainer as pt
inner join pokemons as p on  p.id = pt.pokemon_id
inner join trainers as t on t.trainerID = pt.trainerID
join types as t1 on t1.id = p.primary_type
join types as t2 on t2.id = p.secondary_type
order by pt.pokelevel desc;
