create database CTA;

use CTA;

create table cta
(
cta_site varchar(100),
incident_date TINYTEXT,
incident_category varchar(100),
incident TINYTEXT,
atm TINYTEXT,
restaurant TINYTEXT,
time_category varchar(100),
weather_description varchar(100),
incident_time time
 );
 
alter table cta drop CRIME;

drop table cta;

truncate table cta; 
truncate table cta_final; 


select * from cta;
 
 
create table cta_temp
(
avgtemp TINYTEXT,
maxtemp TINYTEXT,
totalsnow FLOAT,
sunhour FLOAT,
sunset TIME,
sunrise TIME,
moonrise TINYTEXT,
moonset TINYTEXT,
Temperature TINYTEXT,
Humidity TINYTEXT,
cloudcover TINYTEXT,
heatindex TINYTEXT
 );


create table cta_final
(
cta_site varchar(100),
incident_date TINYTEXT,
incident_category varchar(100),
incident TINYTEXT,
atm TINYTEXT,
restaurant TINYTEXT,
time_category varchar(100),
weather_description varchar(100),
incident_time time,
avgtemp TINYTEXT,
maxtemp TINYTEXT,
totalsnow FLOAT,
sunhour FLOAT,
sunset TIME,
sunrise TIME,
moonrise TINYTEXT,
moonset TINYTEXT,
Temperature TINYTEXT,
Humidity TINYTEXT,
cloudcover TINYTEXT,
heatindex TINYTEXT
);


#view table
select * from cta_final;

insert into cta_final 
SELECT * FROM cta cross join cta_temp;

#new columns
alter table cta_temp add sundata TINYTEXT;

alter table cta_final add sundata TINYTEXT;

