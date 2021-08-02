-- return these columns  --- Pokemon's name| Trainer's name| Current Level| Primary Type Name| Secondary Type Name|
-- Sort the data by finding out which trainer has the strongest pokemon -- strongest to weakest

select pokemons_name, trainers_name, current_level, primary_type_name, types.name as secondary_type_name
from (select pokemons.name as pokemons_name, trainers.trainername as trainers_name, pokemon_trainer.pokelevel as current_level, types.name as primary_type_name, pokemons.secondary_type as secondary_type_id
from pokemons
join pokemon_trainer on pokemon_trainer.pokemon_id = pokemons.id
join trainers on trainers.trainerid = pokemon_trainer.trainerid
join types on types.id = pokemons.primary_type) table_1
join types on types.id = secondary_type_id
order by current_level desc;





-- It has the strongest levels----------