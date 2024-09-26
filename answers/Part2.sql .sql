# 1.What are all the types of pokemon that a pokemon can have?
SELECT * FROM types;

# 2.What is the name of the pokemon with id 45?
-- Eevve
SELECT * FROM Pokemons WHERE id = 45; 

# 3.How many pokemon are there?
-- 656
SELECT COUNT(*) FROM pokemons;

# 4. How many types are there?
-- 18
SELECT COUNT(*) FROM types;

# 5. How many pokemon have a secondary type? 
-- 316
SELECT COUNT(secondary_type) FROM pokemons;

