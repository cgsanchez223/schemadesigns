-- from the terminal run:
-- psql < craigslist.sql

DROP DATABASE IF EXISTS craigslist;

CREATE DATABASE craigslist;

\c craigslist

CREATE TABLE regions (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

CREATE TABLE posts (
  id SERIAL PRIMARY KEY,
  title TEXT,
  text TEXT,
  location TEXT,
  user_id INTEGER REFERENCES users ON DELETE CASCADE,
  region_id INTEGER REFERENCES regions,
  category_id INTEGER REFERENCES categories
);

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  username VARCHAR(15) UNIQUE NOT NULL,
  password VARCHAR(20) NOT NULL,
  preferred_region INTEGER REFERENCES regions
);

CREATE TABLE categories (
  id SERIAL PRIMARY KEY,
  name TEXT
);