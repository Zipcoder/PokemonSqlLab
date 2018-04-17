--final report, below returns the data in correct columns. Not sorted or filtered
SELECT p.name, t.trainername, p_t.pokelevel, tp.name, ts.name
from pokemon_trainer p_t
  join pokemons p on p.id = p_t.pokemon_id
  join trainers t on t.trainerID = p_t.trainerID
  join types tp on p.primary_type = tp.id
  join types ts on p.secondary_type = ts.id;