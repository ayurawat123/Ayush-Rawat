create database cars;
use cars;

-- READ ALL THE DATA --
select * from car_data;

-- TOTAL CARS: TOTAL COUNT OF RECORDS OF CARS---
select count(*) from car_data;

-- MANAGER ASKED THE EMPLOYEE HOW MANY CARS WILL BE AVAILABLE FOR THE YEAR 2023?---
select count(*) from car_data where year= 2023;

-- MANAGER ASKED THE EMPLOYEE HOW MANY CARS WILL BE AVAILABLE FOR THE YEAR 2020,2021,2022?--
select count(*) from car_data where year= 2020;
select count(*) from car_data where year= 2021;
select count(*) from car_data where year= 2022;
-- ANOTHER METHOD-: GROUPBY--
select count(*) from car_data where year in (2020,2021,2022) group by year;


#--- Total no of cars available each year?---
select year,count(*) from car_data group by year;

---# how many diesal cars are available in 2020 ---
select count(*) from car_data where year= 2020 and fuel= "Diesel";

---# How many PETROL cars are available in 2020 ---
select count(*) from car_data where year= 2020 and fuel= "petrol";

# print all fuels of the car (petrol,diesel,cng) available by year---
select year,count(*) from car_data where fuel="petrol" group by year;
select year,count(*) from car_data where fuel="Diesel" group by year;
select year,count(*) from car_data where fuel="CNG" group by year;


# more than 100 cars available by year ---
select year,count(*) from car_data group by year having count(*)>100;

# less than 50 cars available by year ---
select year,count(*) from car_data group by year having count(*)<50;

# All cars count details between 2015 to 2023---
select count(*) from car_data where year between 2015 and 2023;

# All cars details between 2015 to 2023 ---
select * from car_data where year between 2015 and 2023;


----------------# END #-----------------------------------------

