#Directions: Write a query that returns the following collumns:

#Pokemon Name(pokemon)	Trainer Name(trainer)	Level (PT)	Primary Type (pokemon)	Secondary Type (pokemon)
#Pokemon's name		Trainer's name		Current Level	Primary Type Name	Secondary Type Name


#Sort the data by finding out which trainer has the strongest pokemon so that this will act as a ranking of strongest to weakest trainer. You may #interpret strongest in whatever way you want, but you will have to explain your decision.


Select t.trainername as trainer_name, p.name as pokemon_name, pt.pokelevel as level, p.primary_type as primary_type, p.secondary_type as secondary_type 
from pokemons as p join pokemon_trainer as pt join trainers as t on p.id = pt.pokemon_id and t.trainerid = pt.trainerid 
group by t.trainername, p.name, pt.pokelevel, p.primary_type, p.secondary_type
order by pt.pokelevel desc;
