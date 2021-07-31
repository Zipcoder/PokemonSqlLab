# What is each pokemon's primary type?
SELECT pokemons.name AS Pokemon_Name, types.name AS Primary_Type 
FROM pokemons 
INNER JOIN types 
ON pokemons.primary_type = types.id;