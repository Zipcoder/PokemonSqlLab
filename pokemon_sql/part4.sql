--final report, below returns the data in correct columns. Not sorted or filtered
SELECT p.name, t.trainername, p_t.pokelevel, tp.name, ts.name
from pokemon_trainer p_t
  join pokemons p on p.id = p_t.pokemon_id
  join trainers t on t.trainerID = p_t.trainerID
  join types tp on p.primary_type = tp.id
  join types ts on p.secondary_type = ts.id;


--final report, below returns the table sorted with the most powerful poke trainers at the top. There are 18 trainers
--with 6 level 100 pokemon and a total poke level of 600, some of them even have the same name; they all tie.
select trainerID, trainername, count(pokelevel) as 'level 100 pokemon', sum(pokelevel) as 'total poke level'
from (SELECT p.name, t.trainername, t.trainerID, p_t.pokelevel, tp.name as 'primary type', ts.name as 'secondary type'
from pokemon_trainer p_t
  join pokemons p on p.id = p_t.pokemon_id
  join trainers t on t.trainerID = p_t.trainerID
  join types tp on p.primary_type = tp.id
  join types ts on p.secondary_type = ts.id) a
where pokelevel = 100 group by trainerID order by count(pokelevel) DESC, sum(pokelevel) DESC;