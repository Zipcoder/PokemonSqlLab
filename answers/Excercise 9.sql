#How many pokemon have a secondary type Poison
SELECT COUNT(name) AS Poison_Type_Pokemon FROM pokemons WHERE secondary_type LIKE '7';