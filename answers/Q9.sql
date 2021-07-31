#How many pokemon have a secondary type `Poison`?
SELECT COUNT(name) AS '#Pokemons With Poison Secondary' 
FROM pokemons 
WHERE secondary_type 
LIKE '7';