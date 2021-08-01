SELECT pokemons.name,types.name FROM pokemons JOIN types ON primary_type;
SELECT types.name FROM pokemons JOIN types ON pokemons.secondary_type=types.id where pokemons.name =
'Rufflet';
SELECT p.name FROM pokemons p , pokemon_trainer t WHERE p.id = t.pokemon_id and
t.trainerID = '303';
SELECT count(*) FROM pokemons p,types t WHERE p.secondary_type =t.id and t.name='Poison';
SELECT count(*),t.name FROM pokemons p,types t WHERE p.primary_type=t.id;
SELECT DISTINCT(t.trainername), COUNT(pokelevel) FROM pokemon_trainer pt JOIN trainers t ON pt.trainerID = t.trainerID WHERE pokelevel = 100 GROUP BY t.trainerID;
SELECT count(pokemon_id),p.name FROM pokemon_trainer pt,pokemons p WHERE pt.pokemon_id=p.id GROUP BY pt.pokemon_id HAVING count(pokemon_id)=1 ;
