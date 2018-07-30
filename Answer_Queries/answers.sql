# Part 2: Simple Selects and Counts
# What are all the types of pokemon that a pokemon can have?
SELECT name
FROM types;

# What is the name of the pokemon with id 45?
SELECT name
FROM pokemons
WHERE id = 45;

# How many pokemon are there?
SELECT COUNT(name)
FROM pokemons;

# How many types are there?
SELECT COUNT(name)
FROM types;

# How many pokemon have a secondary type?
SELECT COUNT(name)
FROM pokemons
WHERE secondary_type is not null;

# Part 3: Joins and Groups
# What is each pokemon's primary type?
SELECT p.name, t.name
FROM pokemons p
JOIN types t ON p.primary_type = t.id;

# What is Rufflet's secondary type?
SELECT p.name, t.name
FROM pokemons p
JOIN types t ON p.secondary_type = t.id
WHERE p.name = 'Rufflet';

# What are the names of the pokemon that belong to the trainer with trainerID 303?
SELECT p.name
FROM pokemons p
JOIN pokemon_trainer p_t ON p.id = p_t.pokemon_id
WHERE p_t.trainerID = 303;

# How many pokemon have a secondary type Poison
SELECT COUNT(p.id)
FROM pokemons p
JOIN types t ON p.secondary_type = t.id
WHERE t.name = 'Poison';

# What are all the primary types and how many pokemon have that type?
SELECT t.name, COUNT(p.primary_type)
FROM types t
JOIN pokemons p ON p.primary_type = t.id
GROUP BY t.name;

# How many pokemon at level 100 does each trainer with at least one level 100 pokemon have?
# (Hint: your query should not display a trainer)
SELECT COUNT(pokemon_id)
FROM pokemon_trainer
WHERE pokelevel = 100
GROUP BY trainerID
HAVING COUNT(pokelevel) > 1;

# How many pokemon only belong to one trainer and no other?
SELECT COUNT(trainerID), pokemon_id
FROM pokemon_trainer
GROUP BY pokemon_id
HAVING COUNT(*) = 1;

# Part 4: Final Report
# Strongest Pokemon is defined as the pokemon with the highest average stat number
# (sum of all stats / number of stats) exclusive of hp as I only care about maxHP and
# only get enjoyment out of pokemon battles with all pokemon in tip-top condition.
SELECT p.name AS 'Pokemon Name',
  t.trainername AS 'Trainer Name',
  p_t.pokelevel AS 'PokeLevel',
  pty.name AS 'Primary Type',
  sty.name AS 'Secondary Type',
  ROUND((p_t.attack + p_t.defense + p_t.maxhp + p_t.spatk + p_t.spdef + p_t.speed) / 6 ,2) AS 'Average Stat'
FROM pokemon_trainer p_t
JOIN pokemons p ON p_t.pokemon_id = p.id
JOIN types pty ON pty.id = p.primary_type
JOIN types sty ON sty.id = p.secondary_type
JOIN trainers t ON t.trainerID = p_t.trainerID
ORDER BY (p_t.attack + p_t.defense + p_t.maxhp + p_t.spatk + p_t.spdef + p_t.speed) / 6 DESC;