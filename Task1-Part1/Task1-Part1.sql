/*Task 1 Part 1*/
/*1. Create a new database with the following table*/

create database Population;

use Population;

create table PopulationState (
	id int not null primary key,
	State varchar(50),
	Capital varchar(50),
	PopulationNumber int unique,
	Area int,
	FamousPeople varchar(100),
	NickName varchar(100),
	UnionYear smallint,
	StateBird varchar(50),
	Date_Created datetime,
	Date_Modified datetime,
)

insert into PopulationState(id, State, Capital, PopulationNumber, Area, FamousPeople, NickName, UnionYear, StateBird)
values (1,'Alaska','Juneau',479000,586412,'Joe Juneau','Last Frontier',1959,'Ptarmigan')

insert into PopulationState(id, State, Capital, PopulationNumber, Area, FamousPeople, NickName, UnionYear, StateBird)
values (2,'Arizona','Pheonix',2963000,113909,'Geronimo','Grand Canyon',1912,'Cactus Wren')

insert into PopulationState(id, State, Capital, PopulationNumber, Area, FamousPeople, NickName, UnionYear, StateBird)
values (3,'California','Sacramento',25174000,158693,'Jack London','Golden State',1850,'Quail')

insert into PopulationState(id, State, Capital, PopulationNumber, Area, FamousPeople, NickName, UnionYear, StateBird)
values (4,'Florida','Tallahassee',10680000,58560,'Joseph Stilwell','Sunshine State',1845,'Mockingbird')

insert into PopulationState(id, State, Capital, PopulationNumber, Area, FamousPeople, NickName, UnionYear, StateBird)
values (5,'Hawaii','Honolulu',1023000,6450,'Don Ho','Aloha State',1959,'Goose')

insert into PopulationState(id, State, Capital, PopulationNumber, Area, FamousPeople, NickName, UnionYear, StateBird)
values (6,'Idaho','Boise',989000,83557,'Sacajawea','Gem State',1890,'Bluebird')

insert into PopulationState(id, State, Capital, PopulationNumber, Area, FamousPeople, NickName, UnionYear, StateBird)
values (7,'Kansas','Topeka',2425000,82264,'Amelia Earhart','Sunflower State',1861,'Meadowlark')

insert into PopulationState(id, State, Capital, PopulationNumber, Area, FamousPeople, NickName, UnionYear, StateBird)
values (8,'Maine','Augusta',1146000,33215,'Henry Longfellow','Pine Tree State',1820,'Chickadee')

insert into PopulationState(id, State, Capital, PopulationNumber, Area, FamousPeople, NickName, UnionYear, StateBird)
values (9,'Nebraska','Lincoln',1597000,77227,'Fred Astaire','Cornhusker State',1867,'Meadowlark')

insert into PopulationState(id, State, Capital, PopulationNumber, Area, FamousPeople, NickName, UnionYear, StateBird)
values (10,'New Jersey','Trenton',7468000,7836,'Stephen Crane','Garden State',1787,'Goldfinch')

insert into PopulationState(id, State, Capital, PopulationNumber, Area, FamousPeople, NickName, UnionYear, StateBird)
values (11,'New York','Albany',17667000,49576,'Walt Whitman','Empire State',1788,'Bluebird')

insert into PopulationState(id, State, Capital, PopulationNumber, Area, FamousPeople, NickName, UnionYear, StateBird)
values (12,'Ohio','Columbus',10746000,41222,'Bob Hope','Buckeye State',1803,'Cardinal')

insert into PopulationState(id, State, Capital, PopulationNumber, Area, FamousPeople, NickName, UnionYear, StateBird)
values (13,'Washington','Olympia',4300000,68192,'Bing Crosby','Evergreen State',1889,'Goldfinch')

insert into PopulationState(id, State, Capital, PopulationNumber, Area, FamousPeople, NickName, UnionYear, StateBird)
values (14,'Wisconsin','Madison',4751000,56154,'Spencer Tracy','Badger State',1848,'Robin')

select * from PopulationState


/* 2.List the states that entered the union between 1850-1920, inclusive ( hint: type in 1850...1920).*/
select State, UnionYear from PopulationState where UnionYear between 1850 and 1920 order by UnionYear asc;

/* 3.List the states with areas of less than 60,000 square miles that also have more than 10,000,000 people. */
select State, Area from PopulationState where Area<=60000 or PopulationNumber>=10000000 order by Area asc;

/* 4.Now arrange the entire database by population from smallest to largest – capture your results into a temporary table and copy the contents to a new table called Famous_sort . */
select * from PopulationState order by PopulationNumber asc;

/*Copied entire database to a new table*/
Create View SecondState as select * from PopulationState;

select * from SecondState;

select count(*) from SecondState;