-- from the terminal run:
-- psql < soccer_league.sql

DROP DATABASE IF EXISTS soccer_league;

CREATE DATABASE soccer_league;

\c soccer_league

CREATE TABLE teams (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  location TEXT
);

CREATE TABLE goals (
  id SERIAL PRIMARY KEY,
  player_id INTEGER REFERENCES players,
  match_id INTEGER REFERENCES matches
);

CREATE TABLE players (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  dob DATE NOT NULL,
  team_id INTEGER REFERENCES teams
);

CREATE TABLE referees (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE matches (
  id SERIAL PRIMARY KEY,
  home_team_id INTEGER REFERENCES teams,
  away_team_id INTEGER REFERENCES teams,
  location TEXT,
  date DATE,
  start_time TEXT,
  season_id INTEGER REFERENCES season,
  referee_id INTEGER REFERENCES referees,
);

CREATE TABLE season (
  id SERIAL PRIMARY KEY,
  start_date DATE,
  end_date DATE
);

CREATE TABLE standings (
  id SERIAL PRIMARY KEY,
  team_id INTEGER REFERENCES teams,
  match_id INTEGER REFERENCES matches,
  results TEXT
)

CREATE TABLE lineups (
  id SERIAL PRIMARY KEY,
  player_id INTEGER REFERENCES players,
  match_id INTEGER REFERENCES matches,
  team_id INTEGER REFERENCES teams
);