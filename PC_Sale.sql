use pc_sale;

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

select * from Componente;
select * from Procesor;

create table Procesor
(
ID int not null auto_increment,
Nume varchar(50),
Frecventa varchar(50) not null,
Nuclee varchar(50) not null,
primary key(ID)
);

alter table Procesor
modify ID int not null;

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

alter table Procesor
modify ID int not null;

alter table Componente
add IDCarcasa int,
add IDMemorieRam int,
add IDPlacaDeBaza int,
add IDPlacaVideo int,
add IDProcesor int,
add IDSpatiuStocare int;

alter table Componente
add foreign key(IDProcesor) references Procesor(ID);

alter table Componente
add foreign key(IDCarcasa) references Carcasa(ID);

alter table Componente
add foreign key(IDMemorieRam) references MemorieRam(ID);

alter table Componente
add foreign key(IDPlacaDeBaza) references PlacaDeBaza(ID);

alter table Componente
add foreign key(IDPlacaVideo) references PlacaVideo(ID);

alter table Componente
add foreign key(IDSpatiuStocare) references SpatiuStocare(ID);

select * from Componente;

insert into Componente(Procesor, PlacaDeBaza, MemorieRam, SpatiuStocare, PlacaVideo, Carcasa, IDCarcasa, IDMemorieRam, IDPlacaDeBaza, IDPlacaVideo, IDProcesor, IDSpatiuStocare) values
('Intel', 5, '2015-12-17', '2015-12-20', 2, 4, 5),
('AMD', 2, '2023-05-20', '2023-05-28', 2, 3, 1),
('Miami Beach', 3, '2023-05-20', '2023-05-28', 3, 3, 2),
('Alien', 7, '2023-03-10', '2023-03-30', 3, 4, 3),
('Team Building', 3, '2023-06-05', '2023-06-14', 1, 2, 4);

select * from Procesor;

insert into Procesor(ID, Nume, Frecventa, Nuclee) values
(1, 'Intel i3', 3.5, 4),
(2, 'Intel i5', 4.2, 8),
(3, 'Intel i7', 4.8, 12),
(4, 'Intel i9', 5.0, 16),
(5, 'AMD Ryzen 1', 3.8, 8),
(6, 'AMD Ryzen 2', 4.3, 16),
(7, 'AMD Ryzen 3', 5.0, 32),
(8, 'AMD Ryzen 4', 5.5, 64);

select* from carcasa; 

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

select * from memorieram;

alter table MemorieRam
change Overclock Tip varchar(10);
 
insert into MemorieRam(ID, Nume, Frecventa, Tip) values
(1, 'Corsair', 2133, 'DDR4'),
(2, 'Corsair', 2200, 'DDR4'),
(3, 'Corsair', 2300, 'DDR4'),
(4, 'Corsair', 2400, 'DDR4'),
(5, 'Corsair', 3200, 'DDR5'),
(6, 'Corsair', 4200, 'DDR5'),
(7, 'Corsair', 5200, 'DDR5'),
(8, 'Corsair', 6400, 'DDR5');

select * from PlacaDeBaza;

insert into PlacaDeBaza(ID, Nume, Marime, SlotProcesor) values
(1, 'Asus', 'E-ATX', '1150'),
(2, 'MSI', 'E-ATX', 'AM2'),
(3, 'Gigabyte', 'ATX', '1155'),
(4, 'ASRock', 'ATX', 'AM4'),
(5, 'Asus', 'microATX', 'AM2'),
(6, 'MSI', 'microATX', '1156'),
(7, 'Gigabyte', 'miniITX', 'AM4'),
(8, 'ASRock', 'miniITX', '1156');

select * from PlacaVideo;

alter table PlacaVideo
add Producator varchar(20);

alter table PlacaVideo
change Viteza Gaming boolean;

insert into PlacaVideo(ID, Nume, VideoRam, Gaming, Producator) values
(1, 'GTX1080', 8, 0, 'Nvidia'),
(2, 'RTX2080', 12, 0, 'Nvidia'),
(3, 'GTX3080', 16, 1, 'Nvidia'),
(4, 'GTX4090', 24, 1, 'Nvidia'),
(5, 'Radeon RX 5600 XT', 12, 0, 'AMD'),
(6, 'Radeon RX 5700 XT', 16, 0, 'AMD'),
(7, 'Radeon RX 6900 XT', 18, 1, 'AMD'),
(8, 'Radeon RX 6950 XT', 24, 1, 'AMD');

select * from SpatiuStocare;

alter table SpatiuStocare
change Nume Producator varchar(50);

alter table SpatiuStocare
change Viteza Gaming boolean;

insert into SpatiuStocare(ID, Producator, Capacitate, Gaming) values
(1, 'AData', 256, 0),
(2, 'Seagate', 256, 0),
(3, 'WesternDigital', 512, 0),
(4, 'Samsung', 1000, 1),
(5, 'Zotac', 2000, 1),
(6, 'Corsair', 4000, 1);