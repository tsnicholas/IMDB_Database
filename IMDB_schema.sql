-- Drops existing database and creates a new one for testing purposes.
DROP DATABASE IF EXISTS IMDB;
CREATE DATABASE IMDB;
USE IMDB;

CREATE TABLE Movies(
    movieid INT PRIMARY KEY,
    title TEXT,
    movie_year INT
);

CREATE TABLE Editors(
    editorid INT PRIMARY KEY,
    editor_name TEXT
);

CREATE TABLE Directors(
    directorid INT PRIMARY KEY,
    director_name TEXT,
    rate FLOAT,
    gross TEXT,
    num INT
);

CREATE TABLE Actors(
    actorid INT PRIMARY KEY,
    actor_name TEXT,
    sex VARCHAR(1)
);

CREATE TABLE Producers(
    producerid INT PRIMARY KEY,
    producer_name TEXT
);

CREATE TABLE Writers(
    writerid INT PRIMARY KEY,
    writer_name TEXT
);

-- One to many editors can edit a movie.
CREATE TABLE Movies2Editors(
    movieid INT,
    editorid INT,
    CONSTRAINT EditedMovie_fk
    FOREIGN KEY (movieid) REFERENCES Movies(movieid)
        ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT EditorOfMovie_fk
    FOREIGN KEY (editorid) REFERENCES Editors(editorid)
        ON DELETE SET NULL ON UPDATE CASCADE
);

-- One to many directors can direct a movie.
CREATE TABLE Movies2Directors(
    movieid INT,
    directorid INT,
    genre VARCHAR(25),
    CONSTRAINT DirectedMovie_fk
    FOREIGN KEY (movieid) REFERENCES Movies(movieid)
        ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT DirectorOfMovie_fk
    FOREIGN KEY (directorid) REFERENCES Directors(directorid)
        ON DELETE SET NULL ON UPDATE CASCADE
);

-- One to many actors can act in a movie.
CREATE TABLE Movies2Actors(
    movieid INT,
    actorid INT,
    as_character TEXT,
    leading_role INT,
    CONSTRAINT ActedMovie_fk
    FOREIGN KEY (movieid) REFERENCES Movies(movieid)
        ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT ActorOfMovie_fk
    FOREIGN KEY (actorid) REFERENCES Actors(actorid)
        ON DELETE SET NULL ON UPDATE CASCADE
);

-- One to many producers can produce a movie.
CREATE TABLE Movies2Producers(
    movieid INT,
    producerid INT,
    addition TEXT,
    CONSTRAINT ProducedMovie_fk
    FOREIGN KEY (movieid) REFERENCES Movies(movieid)
        ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT ProducersOfMovie_fk
    FOREIGN KEY (producerid) REFERENCES Producers(producerid)
        ON DELETE SET NULL ON UPDATE CASCADE
);

-- One to many writers can write a movie.
CREATE TABLE Movies2Writers(
    movieid INT,
    writerid INT,
    addition TEXT,
    CONSTRAINT WritedMovie_fk
    FOREIGN KEY (movieid) REFERENCES Movies(movieid)
        ON DELETE SET NULL ON UPDATE CASCADE,
    CONSTRAINT WriterOfMovie_fk
    FOREIGN KEY (writerid) REFERENCES Writers(writerid)
        ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE Ratings(
    movieid INT,
    movie_rank FLOAT,
    votes INT,
    ratings_distribution TEXT,
    CONSTRAINT MovieRating_fk
    FOREIGN KEY (movieid) REFERENCES Movies(movieid)
        ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE RunningTimes(
    movieid INT,
    running_time TEXT,
    addition TEXT,
    running_time1 TEXT,
    CONSTRAINT MovieRunningTimes_fk
    FOREIGN KEY (movieid) REFERENCES Movies(movieid)
        ON DELETE SET NULL ON UPDATE CASCADE
);

-- A movie can be apart of one to many genres
CREATE TABLE Genres(
    movieid INT,
    genre TEXT,
    CONSTRAINT MovieGenres_fk
    FOREIGN KEY (movieid) REFERENCES Movies(movieid)
        ON DELETE SET NULL ON UPDATE CASCADE
);

-- A movie can be released in one to many countries
CREATE TABLE Countries(
    movieid INT,
    country TEXT,
    CONSTRAINT CountryMovies_fk
    FOREIGN KEY (movieid) REFERENCES Movies(movieid)
        ON DELETE SET NULL ON UPDATE CASCADE
);

-- A movie can have one to many distributers
CREATE TABLE Distributers(
    movieid INT,
    distributer TEXT,
    CONSTRAINT MovieDistributers_fk
    FOREIGN KEY (movieid) REFERENCES Movies(movieid)
        ON DELETE SET NULL ON UPDATE CASCADE
);

-- A movie can be in one to many languages
CREATE TABLE Languages(
    movieid INT,
    movie_language TEXT,
    CONSTRAINT MovieLanguages_fk
    FOREIGN KEY (movieid) REFERENCES Movies(movieid)
        ON DELETE SET NULL ON UPDATE CASCADE
);

-- A movie can have one to many buisnesses
CREATE TABLE Buisness(
    movieid INT,
    buisnesstext TEXT,
    CONSTRAINT MovieBuisnesses_fk
    FOREIGN KEY (movieid) REFERENCES Movies(movieid)
        ON DELETE SET NULL ON UPDATE CASCADE
);

-- A movie can have one to many production companies
CREATE TABLE ProductionCompanies(
    movieid INT,
    company_name TEXT,
    CONSTRAINT MovieCompanies_fk
    FOREIGN KEY (movieid) REFERENCES Movies(movieid)
        ON DELETE SET NULL ON UPDATE CASCADE
);
