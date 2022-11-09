create database SmartHealthConsultation;
use SmartHealthConsultation;
create table smarthealth(
id int primary key identity not null,
patientname varchar(250) unique not null,
contact varchar(250),
date DATE,
time DATETIME,
Symptoms varchar(250)
);
select * from smarthealth;