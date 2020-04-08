/* Vezba 1
Create table Radnik 
*/
/* CREATE DATABASE preduzece; */
USE preduzece;
CREATE TABLE RADNIK
      ( idbr INTEGER NOT NULL PRIMARY KEY,
      ime NVARCHAR (25) NOT NULL,
      prezime NVARCHAR (25) NOT NULL,
      posao NVARCHAR (10),
      kvalif NVARCHAR (3),
      rukovodilac INTEGER,
      datzap DATETIME,
      premija FLOAT(1),
              plata FLOAT(1) DEFAULT(0),
             brod INTEGER);

/* Create table Odelenje  */
CREATE TABLE ODELJENJE
	(brod SMALLINT NOT NULL PRIMARY KEY,
	Imeod CHAR(15) NOT NULL,
	mesto CHAR(20),
	sefod INTEGER);

/* Create table Projekat  */
CREATE TABLE PROJEKAT
	(brproj INTEGER PRIMARY KEY,
	Imeproj CHAR(25) NOT NULL UNIQUE,
	sredstva FLOAT(2),
	rok DATETIME);

/* Create table Ucesce  */
CREATE TABLE UCESCE
	(idbr INTEGER NOT NULL,
	brproj INTEGER NOT NULL,
	brsati INTEGER,
	funkcija CHAR(15));


