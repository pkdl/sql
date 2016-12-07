select City.Name
from
  Country
  left join (City inner join Capital on City.Id = Capital.CityId)
  on Country.Code = City.CountryCode
where Country.Name is 'Malaysia';
