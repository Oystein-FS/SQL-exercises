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













