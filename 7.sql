select
	Name
from(
	select
		Country.Name as Name,
		City.Population as CityPopulation,
		Country.Population as TotalPopulation
	from
		Country inner join City on Country.Code = City.CountryCode
)
group by
	Name
having
	sum(CityPopulation)*2 < TotalPopulation
order by Name
;
	