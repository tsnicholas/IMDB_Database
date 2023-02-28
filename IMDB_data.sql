-- Use "SET GLOBAL local-infile = 1;" before executing script to give permission to load data from local files.
USE IMDB;

LOAD DATA LOCAL INFILE 'C:/Users/Timni/Documents/School_Documents/Junior/Spring/CS 418/Project1/IMDB/IMDB_FULL/Movies.csv' 
INTO TABLE Movies COLUMNS TERMINATED BY ',' ENCLOSED BY '"' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:/Users/Timni/Documents/School_Documents/Junior/Spring/CS 418/Project1/IMDB/IMDB_FULL/Editors.csv' 
INTO TABLE Editors COLUMNS TERMINATED BY ',' ENCLOSED BY '"' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:/Users/Timni/Documents/School_Documents/Junior/Spring/CS 418/Project1/IMDB/IMDB_FULL/Directors.csv' 
INTO TABLE Directors COLUMNS TERMINATED BY ',' ENCLOSED BY '"' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:/Users/Timni/Documents/School_Documents/Junior/Spring/CS 418/Project1/IMDB/IMDB_FULL/Actors.csv' 
INTO TABLE Actors COLUMNS TERMINATED BY ',' ENCLOSED BY '"' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:/Users/Timni/Documents/School_Documents/Junior/Spring/CS 418/Project1/IMDB/IMDB_FULL/Producers.csv' 
INTO TABLE Producers COLUMNS TERMINATED BY ',' ENCLOSED BY '"' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:/Users/Timni/Documents/School_Documents/Junior/Spring/CS 418/Project1/IMDB/IMDB_FULL/Writers.csv' 
INTO TABLE Writers COLUMNS TERMINATED BY ',' ENCLOSED BY '"' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:/Users/Timni/Documents/School_Documents/Junior/Spring/CS 418/Project1/IMDB/IMDB_FULL/Movies2Editors.csv' 
INTO TABLE Movies2Editors COLUMNS TERMINATED BY ',' ENCLOSED BY '"' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:/Users/Timni/Documents/School_Documents/Junior/Spring/CS 418/Project1/IMDB/IMDB_FULL/Movies2Directors.csv' 
INTO TABLE Movies2Directors COLUMNS TERMINATED BY ',' ENCLOSED BY '"' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:/Users/Timni/Documents/School_Documents/Junior/Spring/CS 418/Project1/IMDB/IMDB_FULL/Movies2Actors.csv' 
INTO TABLE Movies2Actors COLUMNS TERMINATED BY ',' ENCLOSED BY '"' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:/Users/Timni/Documents/School_Documents/Junior/Spring/CS 418/Project1/IMDB/IMDB_FULL/Movies2Producers.csv' 
INTO TABLE Movies2Producers COLUMNS TERMINATED BY ',' ENCLOSED BY '"' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:/Users/Timni/Documents/School_Documents/Junior/Spring/CS 418/Project1/IMDB/IMDB_FULL/Movies2Writers.csv' 
INTO TABLE Movies2Writers COLUMNS TERMINATED BY ',' ENCLOSED BY '"' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:/Users/Timni/Documents/School_Documents/Junior/Spring/CS 418/Project1/IMDB/IMDB_FULL/Ratings.csv' 
INTO TABLE Ratings COLUMNS TERMINATED BY ',' ENCLOSED BY '"' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:/Users/Timni/Documents/School_Documents/Junior/Spring/CS 418/Project1/IMDB/IMDB_FULL/RunningTimes.csv' 
INTO TABLE RunningTimes COLUMNS TERMINATED BY ',' ENCLOSED BY '"' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:/Users/Timni/Documents/School_Documents/Junior/Spring/CS 418/Project1/IMDB/IMDB_FULL/Genres.csv' 
INTO TABLE Genres COLUMNS TERMINATED BY ',' ENCLOSED BY '"' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:/Users/Timni/Documents/School_Documents/Junior/Spring/CS 418/Project1/IMDB/IMDB_FULL/Countries.csv' 
INTO TABLE Countries COLUMNS TERMINATED BY ',' ENCLOSED BY '"' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:/Users/Timni/Documents/School_Documents/Junior/Spring/CS 418/Project1/IMDB/IMDB_FULL/Language.csv' 
INTO TABLE Languages COLUMNS TERMINATED BY ',' ENCLOSED BY '"' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:/Users/Timni/Documents/School_Documents/Junior/Spring/CS 418/Project1/IMDB/IMDB_FULL/Distributors.csv' 
INTO TABLE Distributers COLUMNS TERMINATED BY ',' ENCLOSED BY '"' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:/Users/Timni/Documents/School_Documents/Junior/Spring/CS 418/Project1/IMDB/IMDB_FULL/Business.csv' 
INTO TABLE Buisness COLUMNS TERMINATED BY ',' ENCLOSED BY '"' IGNORE 1 ROWS;

LOAD DATA LOCAL INFILE 'C:/Users/Timni/Documents/School_Documents/Junior/Spring/CS 418/Project1/IMDB/IMDB_FULL/ProductionCompanies.csv' 
INTO TABLE ProductionCompanies COLUMNS TERMINATED BY ',' ENCLOSED BY '"' IGNORE 1 ROWS;
