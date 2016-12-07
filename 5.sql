select GovernmentForm, sum(SurfaceArea) as surface from Country
group by GovernmentForm

order by surface desc limit 1;