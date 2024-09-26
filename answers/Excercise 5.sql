#How many pokemon have a secondary type
select COUNT(*) from pokemons where secondary_type IS NOT NULL;