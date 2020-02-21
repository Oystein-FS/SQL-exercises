-- Oppgave 1 --

/*c) - 1*/
SELECT Year, Name, Creator
FROM languages
ORDER BY Year;

/*c) - 2*/
SELECT *
FROM tools
WHERE Name = 'Visual Studio Code';


-- Oppgave 2 --

/*a) - 1*/
SELECT Name, COUNT(Tools_ID) AS Count
FROM languages
GROUP BY Tools_ID
HAVING Tools_ID IS NOT NULL;

/*a) - 2*/
SELECT languages.Name, tools.Name
FROM languages
LEFT JOIN tools ON tools.ID = languages.Tools_ID;

/*d) (ikke helt ferdig)*/
SELECT languages2.Name, COUNT(languagetools.Tool_ID) AS Count
FROM languages2
LEFT JOIN languagetools ON languages2.ID = languagetools.Language_ID
GROUP BY languagetools.Tool_ID
HAVING languagetools.Tool_ID IS NOT NULL;

/*d) (ikke helt ferdig)*/
SELECT languages2.Name, lagnguageToolstools.Name
FROM languages
LEFT JOIN tools ON tools.ID = languages.Tools_ID;









	



