DROP SCHEMA IF EXISTS checkpoint7;
CREATE SCHEMA checkpoint7;
USE checkpoint7;

-- Oppgave 1 --

CREATE TABLE tools(
	ID CHAR(2) PRIMARY KEY,
    Name VARCHAR(100),
    Developer VARCHAR(100)
);

CREATE TABLE languages(
	ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Year INT,
    Creator VARCHAR(100),
    Tools_ID CHAR(2),
    CONSTRAINT fk_tools FOREIGN KEY (Tools_ID) REFERENCES tools(ID)
);

INSERT INTO tools
	VALUES 
    ('VS', 'Visual Studio Code', 'Microsoft'), 
    ('IJ', 'IntelliJ', 'JetBrains');
    
INSERT INTO languages(Name, Year, Creator, Tools_ID)
	VALUES
	('Java', '1996', 'James Gosling', 'IJ'),
    ('JavaScript', '1997', 'Brendan Eich', 'VS'),
    ('C#', '2002', 'Anders Hejlsberg', 'VS'),
    ('Python', '1994', 'Guido van Rossum', NULL);
    
    
 -- Oppgave 2 --
 
CREATE TABLE tools2(
	ID CHAR(2) PRIMARY KEY,
    Name VARCHAR(100),
    Developer VARCHAR(100)
);

CREATE TABLE languages2(
	ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100),
    Year INT,
    Creator VARCHAR(100)
);

CREATE TABLE languagetools(
	ID INT AUTO_INCREMENT PRIMARY KEY,
    Tool_ID CHAR(2),
    Language_ID INT,
	CONSTRAINT fk_tools2 FOREIGN KEY (Tool_ID) REFERENCES tools(ID),
	CONSTRAINT fk_languages FOREIGN KEY (Language_ID) REFERENCES languages2(ID)
);

INSERT INTO tools2
	VALUES 
    ('VS', 'Visual Studio Code', 'Microsoft'), 
    ('IJ', 'IntelliJ', 'JetBrains');
    
INSERT INTO languages2(Name, Year, Creator)
	VALUES
	('Java', '1996', 'James Gosling'),
    ('JavaScript', '1997', 'Brendan Eich'),
    ('C#', '2002', 'Anders Hejlsberg'),
    ('Python', '1994', 'Guido van Rossum');
    
INSERT INTO languagetools(Tool_ID, Language_ID)
	VALUES
    ('IJ', 1),
    ('VS', 2),
    ('VS', 3),
    ('IJ', 4),
    ('IJ', 2),
    ('VS', 4);
    
    SELECT *
    FROM languages2;
 