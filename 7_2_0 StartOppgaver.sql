select Name, SurfaceArea, (Population / SurfaceArea) AS "Pop"
from country
order by Pop desc;

select Continent, sum(Population) AS "Population"
from country
GROUP BY Continent
order by Population desc;

select Code, Name, IndepYear
from country
where IndepYear is not null
order by IndepYear desc, Name;

select *
from country
where Code like '_W_';
 
select *
from country
where Name like 'N%' OR Name like 'O%' OR Name like 'P%'
order by Name;

select *
from countrylanguage
where Percentage >= 99
order by Percentage desc, Language;

select Code, Name, Continent
from country
where Continent like '%America';

select Continent, count(*) as count
from country
group by (Continent)
order by count desc;
/*Hent ut kontinent og antall land i dette kontinentet, for de kontinentene som har 30 eller flereland.Sorter på antall land i synkende rekkefølge.*/

select Continent, count(Name) as 'count'
from country
group by (Continent)
having count >= 30
order by count desc;

























