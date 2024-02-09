use cars;
-- Read Car Data
select * from car_dekho;

-- Total Cars : To get a count of total records --
Select count(*) from car_dekho;

-- The manager asked the employee jow many cars will be available in 2023?
select count(*) from car_dekho where year =2023;

-- The manager asked the employee jow many cars will be available in 2021,2022,2023?
select count(*) from car_dekho where year=2020; 
select count(*) from car_dekho where year =2021;
select count(*) from car_dekho where year =2022;
-- group by --
select count(*) from car_dekho where year in (2021,2022,2023) group by year;

-- Client asked me to print the total of all cars by year.I dint see all details --
select year,count(*) from car_dekho group by year;

-- Client asked to car dealer agent how many diesel cars are there in 2020?--
select count(*) from car_dekho where year=2020 and fuel="Diesel";

-- Client asked to car dealer agent how many petrol cars are there in 2020?--
select count(*) from car_dekho where year=2020 and fuel="Petrol";

-- The manager told the employee to give print all the fuel cars(Petrol,Diesel,cng) --
select fuel,count(*) from car_dekho where fuel = "Petrol" group by fuel;
select fuel,count(*) from car_dekho where fuel = "Diesel" group by fuel;
select fuel,count(*) from car_dekho where fuel = "Cng" group by fuel;

-- Manager said there were more than 100 cars in a given year which year had  more than 100 cars --
select  year,count(*) from car_dekho group by year having count(*)>100;

-- The manager said to the employee All cars count details between 2015 and 2023, we need a complete list
select count(*) from car_dekho where year between 2015 and 2023;

-- The manager said to the employee All car details between 2015 and 2023 we need a complete list
select * from car_dekho where year between 2015 and 2023;