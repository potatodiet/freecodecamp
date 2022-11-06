DROP DATABASE IF EXISTS universe;
DROP TABLE IF EXISTS galaxy CASCADE;
DROP TABLE IF EXISTS star CASCADE;
DROP TABLE IF EXISTS planet CASCADE;
DROP TABLE IF EXISTS moon CASCADE;
DROP TABLE IF EXISTS other;

CREATE DATABASE universe;

CREATE TABLE galaxy (
  galaxy_id    SERIAL PRIMARY KEY,
  name         VARCHAR(20) UNIQUE NOT NULL,
  some_int     INT UNIQUE NOT NULL,
  some_numeric NUMERIC(10),
  some_text    TEXT,
  some_bool    BOOLEAN
);

CREATE TABLE star (
  star_id      SERIAL PRIMARY KEY,
  name         VARCHAR(20) UNIQUE NOT NULL,
  some_int     INT UNIQUE NOT NULL,
  some_numeric NUMERIC(10),
  some_text    TEXT,
  some_bool    BOOLEAN,
  galaxy_id    INTEGER REFERENCES galaxy
);

CREATE TABLE planet (
  planet_id    SERIAL PRIMARY KEY,
  name         VARCHAR(20) UNIQUE NOT NULL,
  some_int     INT UNIQUE NOT NULL,
  some_numeric NUMERIC(10),
  some_text    TEXT,
  some_bool    BOOLEAN,
  star_id      INTEGER REFERENCES star
);

CREATE TABLE moon (
  moon_id      SERIAL PRIMARY KEY,
  name         VARCHAR(20) UNIQUE NOT NULL,
  some_int     INT UNIQUE NOT NULL,
  some_numeric NUMERIC(10),
  some_text    TEXT,
  some_bool    BOOLEAN,
  planet_ID    INTEGER REFERENCES planet
);

CREATE TABLE other (
  other_id     SERIAL PRIMARY KEY,
  name         VARCHAR(20) UNIQUE NOT NULL,
  some_int     INT UNIQUE NOT NULL,
  some_numeric NUMERIC(10),
  some_text    TEXT,
  some_bool    BOOLEAN
);

INSERT INTO galaxy(name, some_int) VALUES('galaxy1', 1);
INSERT INTO galaxy(name, some_int) VALUES('galaxy2', 2);
INSERT INTO galaxy(name, some_int) VALUES('galaxy3', 3);
INSERT INTO galaxy(name, some_int) VALUES('galaxy4', 4);
INSERT INTO galaxy(name, some_int) VALUES('galaxy5', 5);
INSERT INTO galaxy(name, some_int) VALUES('galaxy6', 6);


INSERT INTO star(name, some_int, galaxy_id) VALUES('star1', 1, 1);
INSERT INTO star(name, some_int, galaxy_id) VALUES('star2', 2, 1);
INSERT INTO star(name, some_int, galaxy_id) VALUES('star3', 3, 1);
INSERT INTO star(name, some_int, galaxy_id) VALUES('star4', 4, 1);
INSERT INTO star(name, some_int, galaxy_id) VALUES('star5', 5, 1);
INSERT INTO star(name, some_int, galaxy_id) VALUES('star6', 6, 1);

INSERT INTO planet(name, some_int, star_id) VALUES('planet1', 1, 1);
INSERT INTO planet(name, some_int, star_id) VALUES('planet2', 2, 1);
INSERT INTO planet(name, some_int, star_id) VALUES('planet3', 3, 1);
INSERT INTO planet(name, some_int, star_id) VALUES('planet4', 4, 1);
INSERT INTO planet(name, some_int, star_id) VALUES('planet5', 5, 1);
INSERT INTO planet(name, some_int, star_id) VALUES('planet6', 6, 1);
INSERT INTO planet(name, some_int, star_id) VALUES('planet7', 7, 1);
INSERT INTO planet(name, some_int, star_id) VALUES('planet8', 8, 1);
INSERT INTO planet(name, some_int, star_id) VALUES('planet9', 9, 1);
INSERT INTO planet(name, some_int, star_id) VALUES('planet10', 10, 1);
INSERT INTO planet(name, some_int, star_id) VALUES('planet11', 11, 1);
INSERT INTO planet(name, some_int, star_id) VALUES('planet12', 12, 1);

INSERT INTO moon(name, some_int, planet_id) VALUES('moon1', 1, 1);
INSERT INTO moon(name, some_int, planet_id) VALUES('moon2', 2, 1);
INSERT INTO moon(name, some_int, planet_id) VALUES('moon3', 3, 1);
INSERT INTO moon(name, some_int, planet_id) VALUES('moon4', 4, 1);
INSERT INTO moon(name, some_int, planet_id) VALUES('moon5', 5, 1);
INSERT INTO moon(name, some_int, planet_id) VALUES('moon6', 6, 1);
INSERT INTO moon(name, some_int, planet_id) VALUES('moon7', 7, 1);
INSERT INTO moon(name, some_int, planet_id) VALUES('moon8', 8, 1);
INSERT INTO moon(name, some_int, planet_id) VALUES('moon9', 9, 1);
INSERT INTO moon(name, some_int, planet_id) VALUES('moon10', 10, 1);
INSERT INTO moon(name, some_int, planet_id) VALUES('moon11', 11, 1);
INSERT INTO moon(name, some_int, planet_id) VALUES('moon12', 12, 1);
INSERT INTO moon(name, some_int, planet_id) VALUES('moon13', 13, 1);
INSERT INTO moon(name, some_int, planet_id) VALUES('moon14', 14, 1);
INSERT INTO moon(name, some_int, planet_id) VALUES('moon15', 15, 1);
INSERT INTO moon(name, some_int, planet_id) VALUES('moon16', 16, 1);
INSERT INTO moon(name, some_int, planet_id) VALUES('moon17', 17, 1);
INSERT INTO moon(name, some_int, planet_id) VALUES('moon18', 18, 1);
INSERT INTO moon(name, some_int, planet_id) VALUES('moon19', 19, 1);
INSERT INTO moon(name, some_int, planet_id) VALUES('moon20', 20, 1);

INSERT INTO other(name, some_int) VALUES('other1', 1);
INSERT INTO other(name, some_int) VALUES('other2', 2);
INSERT INTO other(name, some_int) VALUES('other3', 3);
