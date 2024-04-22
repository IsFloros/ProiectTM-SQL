# Database Project for PC_Sale

[Database](https://github.com/IsFloros/ProiectTM-SQL/blob/main/PC_Sale.sql)
Tools used: MySQL Workbench

## Introduction:
- We will be creating a database for storing and retrieving information about PC builds including all the parts from these builds.

### Name of Data Base: PC_Sale

  Tables:
  
- Build - main table
- Carcasa
- MemorieRam
- PlacaDeBaza
- PlacaVideo
- Procesor
- SpatiuStocare

 ### Database Schema 
 ### You can find attached the database schema that was generated through Reverse Engineering and which contains all the tables and the relationships between them.
(https://github.com/IsFloros/ProiectTM-SQL/blob/main/reverse%20engineering.png)
 
 Below you can also check extensive information about the database tables and relationships.
#### Build - main table
Contains columns:
- ID (primary key)
- Denumire
- IDCarcasa ("Build" table is connected with "Carcasa" table through a foreign key relationship which was implemented through **Carcasa_table.ID** as a primary key and **Build_table.IDCarcasa** as a foreign key) ((foreign key IDCarcasa references primary key carcasa ID))
- IDMemorieRam ("Build" table is connected with "MemorieRam" table through a foreign key relationship which was implemented through **MemorieRam_table.ID** as a primary key and **Build_table.IDMemorieRam** as a foreign key) ((foreign key IDMemorieram references primary key MemorieRam ID))
- IDPlacaDeBaza ("Build" table is connected with "PlacaDeBaza" table through a foreign key relationship which was implemented through **PlacaDeBaza_table.ID** as a primary key and **Build_table.IDPlacaDeBaza** as a foreign key) ((foreign key IDPlacaDeBaza references primary key PlacaDeBaza ID))
- IDPlacaVideo ("Build" table is connected with "PlacaVideo" table through a foreign key relationship which was implemented through **PlacaVideo_table.ID** as a primary key and **Build_table.IDPlacaVideo** as a foreign key) ((foreign key IDPlacaVideo references primary key PlacaVideo ID))
- IDProcesor ("Build" table is connected with "PlacaVideo" table through a foreign key relationship which was implemented through **Procesor_table.ID** as a primary key and **Build_table.IDProcesor** as a foreign key) ((foreign key IDProcesor references primary key Procesor ID))
- IDSpatiuDeStocare ("Build" table is connected with "SpatiuStocare" table through a foreign key relationship which was implemented through **SpatiuStocare_table.ID** as a primary key and **Build_table.IDSpatiuStocare** as a foreign key) ((foreign key IDSpatiuStocare references primaty key SpatiuStocare ID))

#### Carcasa
Contains columns:
- ID (primary key)
- Nume
- Marime

#### MemorieRam
Contains columns:
- ID (primary key)
- Nume
- Frecventa
- Tip

#### PlacaDeBaza
Contains columns:
- ID (primary key)
- Nume
- Marime
- Slot Procesor

#### PlacaVideo
Contains columns:
- ID (primary key)
- Nume
- VideoRam
- Gaming
- Producator

#### Procesor
Contains columns:
- ID (primary key)
- Nume
- Frecventa
- Nuclee

#### SpatiuStocare
Contains columns:
- ID (primary key)
- Producator
- Capacitate
- Gaming


## Types of data query used:
- DDL or Data Definition Language that consists of the SQL commands that can be used to define the database schema. It simply deals with descriptions of the database schema and is used to create and modify the structure of database objects in the database.
- DML or Data Manipulation Language that consists of the SQL commands that deal with the manipulation of data present in the database. This includes most of the SQL statements.
- DQL or Data Query Language statements are used for performing queries on the data within schema objects. The purpose of the DQL Command is to get some schema relation based on the query passed to it.

## Types of commands used:
### Data Definition Language (DDL)
The following instructions were written in the scope of CREATING the structure of the database:

- Using Create:

create database PC_Sale;

create table Build
(
ID int not null auto_increment,
Denumire varchar(50),
IDCarcasa int,
IDMemorieram int,
IDPlacaDeBaza int,
IDPlacaVideo int,
IDProcesor int,
IDSpatiuStocare int,
primary key(ID)
);

create table Componente
(
ID int not null auto_increment,
Procesor varchar(20) not null,
PlacaDeBaza varchar(50) not null,
MemorieRam varchar(50) not null,
SpatiuStocare varchar(50) not null,
PlacaVideo varchar(50) not null,
Carcasa varchar(50) not null,
primary key(ID)
);

create table Procesor
(
ID int not null auto_increment,
Nume varchar(50),
Frecventa varchar(50) not null,
Nuclee varchar(50) not null,
primary key(ID)
);

create table PlacaDeBaza
(
ID int not null,
Nume varchar(50),
Marime varchar(50),
SlotProcesor varchar(50),
primary key(ID)
);

create table MemorieRam
(
ID int not null,
Nume varchar(50),
Frecventa varchar(50),
Overclock bool,
primary key(ID)
);

create table SpatiuStocare
(
ID int not null,
Nume varchar(50),
Capacitate int,
Viteza int,
primary key(ID)
);

create table PlacaVideo
(
ID int not null,
Nume varchar(50),
VideoRam int,
Viteza int,
primary key(ID)
);

create table Carcasa
(
ID int not null,
Nume varchar(50),
Marime varchar(20),
primary key(ID)
);

After the database and the tables have been created, a few ALTER instructions were written in order to update the structure of the database, as described below:
- Using Alter:

alter table Procesor
modify ID int not null;

alter table Procesor
modify ID int not null;

alter table MemorieRam
change Overclock Tip varchar(10);

alter table PlacaVideo
add Producator varchar(20);

alter table PlacaVideo
change Viteza Gaming boolean;

alter table SpatiuStocare
change Nume Producator varchar(50);

alter table SpatiuStocare
change Viteza Gaming boolean;

alter table Build
change Carcasa NumeCarcasa varchar(50);

alter table Build
change MemorieRam NumeMemorieRam varchar(50);

alter table Build
change PlacaDeBaza NumePlacaDeBaza varchar(50);

alter table Build
change PlacaVideo NumePlacaVideo varchar(50);

alter table Build
change Procesor NumeProcesor varchar(50);

alter table Build
change SpatiuStocare ProducatorSpatiuStocare varchar(50);

alter table Build
add foreign key(IDCarcasa) references carcasa(ID);

alter table Build
add foreign key(IDMemorieram) references MemorieRam(ID);

alter table Build
add foreign key(IDPlacaDeBaza) references PlacaDeBaza(ID);

alter table Build
add foreign key(IDPlacaVideo) references PlacaVideo(ID);

alter table Build
add foreign key(IDProcesor) references Procesor(ID);

alter table Build
add foreign key(IDSpatiuStocare) references SpatiuStocare(ID);

alter table procesor
add Producator varchar(20);

Some drop instructions were used in order to remove unused data:
- Using Drop:

drop table spatiustocare;

drop table Build;


Truncate was used for very specific cases:
- Using Truncate:

select memorieram.frecventa
from memorieram
where truncate(frecventa, 2);



### Data Manipulation Language (DML)
In order to be able to use the database, I populated the tables with various data necessary in order to perform queries and manipulate the data using the below instructions:

- Using Insert:

insert into Build(NumeCarcasa, NumeMemorieRam, NumePlacaDeBaza, NumePlacaVideo, NumeProcesor, ProducatorSpatiuStocare) values
('Aero Cool', 'Corsair', 'Asus', 'GTX1080', 'Intel i3', 'AData'),
('Be Quiet!', 'Corsair', 'MSI', 'RTX2080', 'Intel i5', 'Seagate'),
('Cooler Master', 'Corsair', 'Gigabyte', 'GTX3080', 'Intel i7', 'WesternDigital'),
('Corsair', 'Corsair', 'ASRock', 'GTX4090', 'Intel i9', 'Samsung'),
('EVGA', 'Corsair', 'Asus', 'Radeon RX 5600 XT', 'AMD Ryzen 1', 'Zotac'),
('Fractal Design', 'Corsair', 'MSI', 'Radeon RX 5700 XT', 'AMD Ryzen 2', 'SanDisk'),
('Lian Li', 'Corsair', 'Gigabyte', 'Radeon RX 6900 XT', 'AMD Ryzen 3', 'Seagate'),
('NZXT', 'Corsair', 'ASRock', 'Radeon RX 6950 XT', 'AMD Ryzen 4', 'SanDisk'),
('Thermal Take', 'Corsair', 'Asus', 'GTX4090', 'Intel i9', 'Samsung');

insert into Procesor(ID, Nume, Frecventa, Nuclee) values
(1, 'Intel i3', 3.5, 4),
(2, 'Intel i5', 4.2, 8),
(3, 'Intel i7', 4.8, 12),
(4, 'Intel i9', 5.0, 16),
(5, 'AMD Ryzen 1', 3.8, 8),
(6, 'AMD Ryzen 2', 4.3, 16),
(7, 'AMD Ryzen 3', 5.0, 32),
(8, 'AMD Ryzen 4', 5.5, 64);

insert into Carcasa(ID, Nume, Marime) values
(1, 'Aero Cool', 'SmallTower'),
(2, 'Be Quiet!', 'SmallTower'),
(3, 'Cooler Master', 'SmallTower'),
(4, 'Corsair', 'NormalTower'),
(5, 'EVGA', 'NormalTower'),
(6, 'Fractal Design', 'NormalTower'),
(7, 'Lian Li', 'FullTower'),
(8, 'NZXT', 'FullTower'),
(9, 'Thermal Take', 'FullTower');

insert into MemorieRam(ID, Nume, Frecventa, Tip) values
(1, 'Corsair', 2133, 'DDR4'),
(2, 'Corsair', 2200, 'DDR4'),
(3, 'Corsair', 2300, 'DDR4'),
(4, 'Corsair', 2400, 'DDR4'),
(5, 'Corsair', 3200, 'DDR5'),
(6, 'Corsair', 4200, 'DDR5'),
(7, 'Corsair', 5200, 'DDR5'),
(8, 'Corsair', 6400, 'DDR5');

insert into PlacaDeBaza(ID, Nume, Marime, SlotProcesor) values
(1, 'Asus', 'E-ATX', '1150'),
(2, 'MSI', 'E-ATX', 'AM2'),
(3, 'Gigabyte', 'ATX', '1155'),
(4, 'ASRock', 'ATX', 'AM4'),
(5, 'Asus', 'microATX', 'AM2'),
(6, 'MSI', 'microATX', '1156'),
(7, 'Gigabyte', 'miniITX', 'AM4'),
(8, 'ASRock', 'miniITX', '1156');

insert into PlacaVideo(ID, Nume, VideoRam, Gaming, Producator) values
(1, 'GTX1080', 8, 0, 'Nvidia'),
(2, 'RTX2080', 12, 0, 'Nvidia'),
(3, 'GTX3080', 16, 1, 'Nvidia'),
(4, 'GTX4090', 24, 1, 'Nvidia'),
(5, 'Radeon RX 5600 XT', 12, 0, 'AMD'),
(6, 'Radeon RX 5700 XT', 16, 0, 'AMD'),
(7, 'Radeon RX 6900 XT', 18, 1, 'AMD'),
(8, 'Radeon RX 6950 XT', 24, 1, 'AMD');

insert into SpatiuStocare(ID, Producator, Capacitate, Gaming) values
(1, 'AData', 256, 0),
(2, 'Seagate', 256, 0),
(3, 'WesternDigital', 512, 0),
(4, 'Samsung', 1000, 1),
(5, 'Zotac', 2000, 1),
(6, 'SanDisk', 4000, 1);

insert into Build(Denumire, IDCarcasa, IDMemorieRam, IDPlacaDeBaza, IDPlacaVideo, IDProcesor, IDSpatiuStocare) values
('DeathNote', 1, 2, 3, 4, 5, 6),
('Jujutsu', 2, 1, 1, 1, 1, 1),
('Attack On Titan', 3, 3, 2, 2, 2, 2),
('OnePiece', 4, 4, 3, 3, 3, 3),
('FullMetalAlchemist', 5, 5, 4, 4, 4, 4),
('DemonSlayer', 6, 6, 5, 5, 5, 5),
('MyHeroAcademia', 7, 7, 6, 6, 6, 5),
('Naruto', 8, 8, 7, 7, 7, 6),
('HunterXHunter', 9, 8, 8, 8, 8, 6);

After the insert, in order to prepare the data to be better suited for the testing process, I updated some data in the following way:

- Using Update:

update procesor
set Nuclee = 4
where ID=1;


Some of the information had to be removed using the delete instruction:
- Using Delete"

delete from memorieram
where ID=6;



### Data Query Language (DQL)

In order to simulate various scenarios that might happen in real life I created the following queries that would cover multiple potential real-life situations:
- Using Select, Filters and Subquerys

select * from carcasa;
select * from memorieram;
select * from placadebaza;
select * from placavideo;
select * from procesor;
select * from spatiustocare;
select * from Build;

select * from Build where Denumire = 'DeathNote';

select build.denumire, carcasa.Nume
from build inner join carcasa
on build.IDCarcasa=carcasa.ID;

select build.denumire, carcasa.Nume
from build inner join carcasa 
on build.IDCarcasa=carcasa.ID 
where carcasa.nume = 'Corsair';

select build.denumire, carcasa.Nume 
from build right join carcasa 
on build.IDCarcasa=carcasa.ID 
order by IDCarcasa desc;

select build.denumire, carcasa.Nume
from build left join carcasa 
on build.IDCarcasa=carcasa.ID 
order by IDCarcasa desc 
limit 3;

select build.denumire, carcasa.Nume 
from build cross join carcasa 
on build.IDCarcasa=carcasa.ID 
where carcasa.nume = 'Lian Li';

select build.Denumire, placavideo.Nume 
from build inner join placavideo 
on build.IDPlacaVideo=placavideo.ID 
where placavideo.nume = 'GTX4090';

select build.Denumire, procesor.Nume
from build inner join procesor 
on build.IDProcesor=procesor.ID 
where procesor.nume = 'Intel i7';

select build.Denumire, placavideo.Producator, procesor.Nume 
from build inner join placavideo inner join procesor
on build.IDPlacaVideo=placavideo.ID and build.IDProcesor=procesor.ID 
where placavideo.Producator = 'Nvidia' and procesor.Nume like 'Intel%';

select build.Denumire, placavideo.Producator, procesor.Nume 
from build inner join placavideo inner join procesor inner join placadebaza 
on build.IDPlacaVideo=placavideo.ID and build.IDProcesor=procesor.ID and build.IDPlacaDeBaza=placadebaza.ID 
where placavideo.Producator = 'AMD' and procesor.Nume like 'AMD%' and placadebaza.Nume = 'Gigabyte';

select build.Denumire, placavideo.Producator, procesor.Nume 
from build inner join placavideo inner join procesor inner join placadebaza 
on build.IDPlacaVideo=placavideo.ID and build.IDProcesor=procesor.ID and build.IDPlacaDeBaza=placadebaza.ID 
where placavideo.Producator = 'Nvidia' and procesor.Nume like 'Intel%' and placadebaza.Nume = 'Asus';

select build.Denumire, placavideo.Producator, procesor.Nume
from build inner join placavideo inner join procesor inner join placadebaza
on build.IDPlacaVideo=placavideo.ID and build.IDProcesor=procesor.ID and build.IDPlacaDeBaza=placadebaza.ID
where placavideo.Nume like 'Radeon%' and procesor.Nume like 'AMD%' and placadebaza.Nume = 'ASRock';

select build.Denumire, carcasa.Nume 
from build inner join carcasa
on build.IDCarcasa=carcasa.ID
where carcasa.nume = 'Corsair';

select build.Denumire, build.IDCarcasa
from build
where build.IDCarcasa > (Select build.IDCarcasa from build where IDCarcasa=2);

select build.Denumire, carcasa.Nume
from build cross join carcasa 
on build.IDCarcasa=carcasa.ID 
where carcasa.Nume = (select carcasa.Nume from carcasa where carcasa.Nume = 'Lian Li');

select build.Denumire, carcasa.Nume, placadebaza.Nume
from build cross join carcasa inner join placadebaza
on build.IDCarcasa=carcasa.ID and build.IDPlacaDeBaza=placadebaza.ID
where carcasa.Nume = (select carcasa.Nume from carcasa where carcasa.Nume = 'Lian Li') and placadebaza.Nume = (select placadebaza.Nume from placadebaza where placadebaza.Nume = 'MSI');

select build.Denumire, carcasa.Nume, placadebaza.Nume
from build cross join carcasa inner join placadebaza
on build.IDCarcasa=carcasa.ID and build.IDPlacaDeBaza=placadebaza.ID
where carcasa.Nume = (select carcasa.Nume from carcasa where carcasa.Nume = 'Lian Li') and build.IDPlacaDeBaza = (select build.IDPlacaDeBaza from build where build.IDPlacaDeBaza = 6);

select build.Denumire, carcasa.Nume, placadebaza.Nume
from build cross join carcasa inner join placadebaza 
on build.IDCarcasa=carcasa.ID and build.IDPlacaDeBaza=placadebaza.ID 
where carcasa.Nume = (select carcasa.Nume from carcasa where carcasa.Nume = 'Cooler Master') and build.IDPlacaDeBaza = (select build.IDPlacaDeBaza from build where build.IDPlacaDeBaza = 2);

select build.Denumire, procesor.Nume, placavideo.VideoRam 
from build cross join procesor inner join placavideo 
on build.IDProcesor=procesor.ID and build.IDPlacaVideo=placavideo.ID 
where procesor.Nume = (select procesor.Nume from procesor where procesor.Nume like 'AMD Ryzen 3') and placavideo.VideoRam = (select placavideo.VideoRam from placavideo where placavideo.VideoRam = 18);


 ### Conclusions:
 In this project, I've developed a comprehensive MySQL database that serves as a backbone for managing a PC components library. Throughout the development process, I've encountered various challenges and milestones that have enriched my understanding of database design, management, and implementation.
One of the significant achievements of this project is the successful modeling of the database schema. The normalization process ensured data integrity and minimized redundancy, laying a robust foundation for efficient data storage and retrieval.
Another notable aspect is the implementation of complex queries and stored procedures, which enhance the functionality and performance of the database.
Looking ahead, there are several areas for future improvement and expansion.

In conclusion, this project has been a valuable learning experience, providing hands-on exposure to database design principles, SQL query optimization techniques, and best practices in data management. I'm proud of the accomplishments achieved thus far and excited about the potential for future enhancements and innovations.



