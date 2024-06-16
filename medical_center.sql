-- from the terminal run:
-- psql < medical_center.sql

DROP DATABASE IF EXISTS medical_center;

CREATE DATABASE medical_center;

\c medical_center

CREATE TABLE doctors (
  id SERIAL PRIMARY KEY,
  name TEXT,
  specialty TEXT
);

CREATE TABLE visits (
  id SERIAL PRIMARY KEY,
  doctor_id INTEGER REFERENCES doctors NOT NULL,
  patient_id INTEGER REFERENCES patients NOT NULL,
  visit_date DATE NOT NULL
);

CREATE TABLE patients (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  insurance TEXT AND INTEGER,
  dob DATE NOT NULL,
);

CREATE TABLE diagnosis (
  id SERIAL PRIMARY KEY,
  visit_id DATE REFERENCES visits NOT NULL,
  disease_id TEXT REFERENCES diseases,
  notes TEXT
);

CREATE TABLE diseases, (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  description TEXT
);
