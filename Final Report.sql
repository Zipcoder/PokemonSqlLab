# The strongest Pokemon is the one with highest sum of stat, than sort by level
# because a relataive low level legendary usually has high state, it will still 
# easily beat out a lv.100 pre-evolution pokemon which has low stat.

SELECT p.name as "Pokemon Name", 
t.trainername as "Trainer Name", 
pt.pokelevel as Level,
t1.name as "Primary Type",
t2.name as "Secondary Type"
from pokemon_trainer as pt
join pokemons as p on pt.pokemon_id = p.id
join trainers as t on pt.trainerID = t.trainerID 
join types as t1 on p.primary_type = t1.id
join types as t2 on p.secondary_type = t2.id
order by (maxhp+attack+defense+spatk+spdef+speed) desc, pt.pokelevel desc;


