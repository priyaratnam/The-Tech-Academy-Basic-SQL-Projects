CREATE DATABASE Movies_Databases;
USE msdb
GO
	CREATE TABLE Table_Actorsss (
		Actor_id INT PRIMARY KEY NOT NULL IDENTITY (5,5),
		Actor_fname VARCHAR(80) NOT NULL,
		Actor_lname VARCHAR(80) NOT NULL,
		Movie_name VARCHAR(80) NOT NULL
	);
	CREATE TABLE Table_Directorss (
		Director_id INT PRIMARY KEY NOT NULL IDENTITY (50,1),
		Director_fname VARCHAR(80) NOT NULL,
		Director_lname VARCHAR(80) NOT NULL,
		Actor_id INT NOT NULL CONSTRAINT fk_actors_Actor_id FOREIGN KEY REFERENCES Table_Actors(Actor_id) ON UPDATE CASCADE ON DELETE CASCADE,
	);
	INSERT INTO Table_Actors
			(Actor_fname, Actor_lname, Movie_Name)
			VALUES
			('Vijay', 'Malavika', 'Master'),
			('Vijay', 'Keerthy Suresh', 'Sarkar'),
			('Suriya', 'Anushka Shetty', 'Singam 3'),
			('Suriya', 'Lijomol Jose', 'Jai Bhim'),
			('Vijay Antony', 'Aathmika', 'Kodiyil Oruvan')
	;
	SELECT * FROM Table_Actors;
	INSERT INTO Table_Directors
			(Director_fname, Director_lname, Actor_id)
			VALUES
			('Lokesh', 'Kanagaraj', '1'),
			('A.R','Murugadose', '2'),
			('Hari', 'Raja', '3'),
			('T.J', 'Gnanavel', '4'),
			('Ananda', 'Krishnan', '5')
	;
	SELECT * FROM Table_Directors;
	SELECT 
		a1.Actor_fname, a1.Actor_lname, d1.Director_fname,
		d1.Director_lname, a1.Movie_Name 
		FROM Table_Actors a1
		INNER JOIN Table_Directors d1 ON a1.Actor_id = d1.Actor_id
		WHERE a1.Movie_Name = 'PK'