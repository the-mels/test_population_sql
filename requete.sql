#Combien y-a-t il de pays ?

#pays total
select count(country.id) 
from country;

#pays dans la table city
select count(distinct(city.country_id)) 
from city;

#Quelle est la population habitant dans des mégapoles (> 500 000 habitants) dans chaque pays ?

select country.name,sum(city.population) 
from city,country 
where (country.id = city.country_id) and (city.population >0.5) 
group by country.name; 



#Quelle est la plus grande ville du pays qui s'appelle Australie ?

select city.name 
from city where city.area = 
	(select max(city.area) from city, country where (country.id = city.country_id) AND (country.name = "Australie"));



#Quels pays ne comptent pas de ville de plus de 500 000 habitants ?

select name 
from 
	(select max(city.population) as max_pop,country.name as name from city, country where (country.id = city.country_id) group by country.name) as s 
where s.max_pop < 0.5;