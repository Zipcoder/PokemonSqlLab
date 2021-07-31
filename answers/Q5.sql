#How many pokemon have a secondary type?
SELECT COUNT(id) FROM pokemons WHERE secondary_type IS NOT NULL;