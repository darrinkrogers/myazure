-- Drop any existing DB and user
DROP USER IF EXISTS 'movieuser'@'localhost';
DROP DATABASE IF EXISTS movies;


-- Create DB and user
CREATE DATABASE IF NOT EXISTS movies;
CREATE USER 'movieuser'@'localhost' IDENTIFIED BY 'moviespswd';
GRANT ALL PRIVILEGES ON movies.* TO 'movieuser'@'localhost' WITH GRANT OPTION;

USE movies;

-- Create the tables & relationships
CREATE TABLE IF NOT EXISTS movie (
    movie_id INT AUTO_INCREMENT NOT NULL,
    title VARCHAR(255) NOT NULL,
    summary VARCHAR(4000),
  PRIMARY KEY (movie_id)
);

-- Populate all tables in order of dependency

insert into movie(title, summary) values('Rocky', 'An underdog fighter is given shot at the title');
insert into movie(title, summary) values('American Werefolf in London', 'Two American teenagers get attacked by a Werewolf on vacation');
insert into movie(title, summary) values('Casablanca', 'Humphrey Bogart and Ingrid Bergman in a classic romance. Considered one of the best movies of all time.');
insert into movie(title, summary) values('The Outsiders', 'They just wanted to belong');
insert into movie(title, summary) values('Body of Evidence', 'Steamy movie with Madonna');
insert into movie(title, summary) values('Dark Knight', 'Best Batman movie of all time');
insert into movie(title, summary) values('Halloween', 'The original by John Carpenter. Very low budget, fake leaves.');
insert into movie(title, summary) values('Escape from Alcatraz', 'Clint Eastwood, based on a true story.');
insert into movie(title, summary) values('Point Break', '100% pure adrenaline !!!');
insert into movie(title, summary) values('Stir Crazy', 'Great comedy from early 1980');

