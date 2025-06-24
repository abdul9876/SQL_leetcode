select ROUND(sum(tiv_2016),2) as tiv_2016 from Insurance 
where tiv_2015 in (select tiv_2015 from Insurance Group by tiv_2015 having count(*)>1) and (lat,lon) in(select lat,lon from Insurance Group by lat,lon having count(*)=1);
