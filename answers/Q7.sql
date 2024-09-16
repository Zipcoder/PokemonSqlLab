# What is Rufflet's secondary type?
SELECT pokemons.name AS Pokemon_Name, types.name AS Secondary_Type 
FROM pokemons 
INNER JOIN types on pokemons.secondary_type = types.id 
WHERE pokemons.name 
LIKE 'Rufflet';