--1) What are all the types of pokemon that a pokemon can have?
  SELECT pokemon.types.name
  FROM pokemon.types;

--2)What is the name of the pokemon with id 45?
  SELECT pokemons.name
  FROM pokemon.pokemons
  WHERE id = 45;

--3)How many pokemon are there?
  SELECT COUNT(*)
  FROM pokemon.pokemons;

--4)How many types are there?
  SELECT COUNT(*)
  FROM pokemon.types;


--5)How many pokemon have a secondary type?
  SELECT COUNT(secondary_type)
  FROM pokemon.pokemons;