select* from cars.car_dekho;
use cars;
select* from car_dekho;
-- total car: to get a count of total records--
select count(*) from car_dekho;
-- manager ask to employee how many cars avaiable in 2023--
 select count(*) from car_dekho where year =2023;
 select count(*) from car_dekho where year = 2022;
 -- manager ask to employee how many cars avaiable in 2020,2021,2022--
 select count(*) from car_dekho where year = 2020; # 74
 select count(*) from car_dekho where year = 2021; # 7
 select count(*) from car_dekho where year = 2022; # 7
 --groupby--
 select count(*) from car_dekho where year in(2020,2021,2022) group by year;
 -- client asked me to print total of all the cars by year. i don't see all the details--
 select year, count(*) from car_dekho group by year;
 -- client asked to car dealer how many diesel cars in 2020?--
 select count(*) from car_dekho where year = 2020 and fuel = 'Diesel';
 -- client asked to car dealer how many petrol cars will there in 2020?--
 select count(*) from car_dekho where year =2020 and fuel = 'Petrol';
 -- manager told the employee to give a print all the fuel (petrol,diesel and CNG) come by all year--
 select year, count(*) from car_dekho where fuel = 'Petrol' group by year;
 select year, count(*) from car_dekho where fuel = 'Diesel' group by year;
 select year, count(*) from car_dekho where fuel ='CNG' group by year;
 select year, count(*) from car_dekho group by year;
 -- manager said there were more than 100 cars in a given year,which year had more than 100 cars? --
 select year, count(*) from car_dekho group by year having count(*)>100;  
 select year, count(*) from car_dekho group by year having count(*)<50;
 -- manager said to employee all cars count details between 2015 and 2023; we need a complete list --
 select count(*) from car_dekho where year between 2015 and 2023;
  -- manager said to employee all cars details between 2015 and 2023; we need a complete list --
  select * from car_dekho where year between 2015 and 2023;