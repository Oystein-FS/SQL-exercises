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