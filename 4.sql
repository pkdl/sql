select Name, count(Cities) as num from(
	select Country.Name as Name, City.Name as Cities
		from Country left join City on City.CountryCode = Country.Code and City.Population >= 1000000
)
group by Name
order by num desc, Name;