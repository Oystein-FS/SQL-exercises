select Name, Population
from city
where Name like 'O%o'
order by Population desc;

select country.Name, city.Name, city.Population
from city 
left join country on city.CountryCode = country.Code
where city.name like 'O%o'
order by city.Population desc;

select *
from country;

/*3*/
select Name, Continent
from country
order by Continent, Name;

/*4*/
select country.Name, count(city.CountryCode) as 'Cities', avg(city.Population) as 'AvgPopulation'
from city left join country on city.CountryCode = country.Code
group by city.CountryCode
order by Cities desc;

/*5*/
select country.Name, country.Population, country.Continent, city.Name, city.Population as 'PopulationCity'
from country 
join city on country.Code = city.CountryCode
where city.population < 1000
order by country.Name;

/*6*/
select country.Name as 'Country', country.GovernmentForm, city.Name as 'City' , city.Population
from city
left join country on country.Code = city.CountryCode
where country.GovernmentForm like '%onarchy%'
order by city.Population desc;

/*7*/
select city.Name, country.Continent, city.Population
from city 
left join country on  country.Code = city.CountryCode
where city.Population > 8000000
order by  city.Population desc;

/*8*/
select country.Name, country.Continent, count(country.Name) as 'Languages'
from country
left join countryLanguage on country.Code = countryLanguage.CountryCode
group by country.Name
having country.Continent = 'Asia' and Languages >= 10;







