create database PC_Sale;
use pc_sale;

#creare tabel (DDL)
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

#creare tabel secundar cu procesoare(DDL)
create table Procesor
(
ID int not null auto_increment,
Nume varchar(50),
Frecventa varchar(50) not null,
Nuclee varchar(50) not null,
primary key(ID)
);

#modificare tabel (DDL)
alter table Procesor
modify ID int not null;

#creare tabel secundar cu placile de baza(DDL)
create table PlacaDeBaza
(
ID int not null,
Nume varchar(50),
Marime varchar(50),
SlotProcesor varchar(50),
primary key(ID)
);

#creare tabel secundar cu memoriile ram(DDL)
create table MemorieRam
(
ID int not null,
Nume varchar(50),
Frecventa varchar(50),
Overclock bool,
primary key(ID)
);

#creare tabel secundar cu spatiile de stocare(DDL)
create table SpatiuStocare
(
ID int not null,
Nume varchar(50),
Capacitate int,
Viteza int,
primary key(ID)
);

#creare tabel secundar cu placile video(DDL)
create table PlacaVideo
(
ID int not null,
Nume varchar(50),
VideoRam int,
Viteza int,
primary key(ID)
);

#creare tabel secundar cu tipurile de carcase(DDL)
create table Carcasa
(
ID int not null,
Nume varchar(50),
Marime varchar(20),
primary key(ID)
);

#modificare tabel (DDL)
alter table Procesor
modify ID int not null;

#modificare tabel (DDL)
alter table Componente
add IDCarcasa int,
add IDMemorieRam int,
add IDPlacaDeBaza int,
add IDPlacaVideo int,
add IDProcesor int,
add IDSpatiuStocare int;

#modificare tabel (DDL) adaugare foreign key
alter table Componente
add foreign key(IDProcesor) references Procesor(ID);

#modificare tabel (DDL) adaugare foreign key
alter table Componente
add foreign key(IDCarcasa) references Carcasa(ID);

#modificare tabel (DDL) adaugare foreign key
alter table Componente
add foreign key(IDMemorieRam) references MemorieRam(ID);

#modificare tabel (DDL) adaugare foreign key
alter table Componente
add foreign key(IDPlacaDeBaza) references PlacaDeBaza(ID);

#modificare tabel (DDL) adaugare foreign key
alter table Componente
add foreign key(IDPlacaVideo) references PlacaVideo(ID);

#modificare tabel (DDL) adaugare foreign key
alter table Componente
add foreign key(IDSpatiuStocare) references SpatiuStocare(ID);

#aduc informatiile din tabel (DQL)
select * from Componente;

#stergere tabel (DDL)
drop table componente;

#aduc informatiile din tabel (DQL)
select * from Procesor;

#inserare date in tabelul cu procesoare(DML)
insert into Procesor(ID, Nume, Frecventa, Nuclee) values
(1, 'Intel i3', 3.5, 4),
(2, 'Intel i5', 4.2, 8),
(3, 'Intel i7', 4.8, 12),
(4, 'Intel i9', 5.0, 16),
(5, 'AMD Ryzen 1', 3.8, 8),
(6, 'AMD Ryzen 2', 4.3, 16),
(7, 'AMD Ryzen 3', 5.0, 32),
(8, 'AMD Ryzen 4', 5.5, 64);

#aduc informatiile din tabel (DQL)
select* from carcasa; 

#inserare date in tabelul cu carcase(DML)
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

#aduc informatiile din tabel (DQL)
select * from memorieram;

#modificare tabel (DDL)
alter table MemorieRam
change Overclock Tip varchar(10);
 
#inserare date in tabelul cu memorii ram(DML)
insert into MemorieRam(ID, Nume, Frecventa, Tip) values
(1, 'Corsair', 2133, 'DDR4'),
(2, 'Corsair', 2200, 'DDR4'),
(3, 'Corsair', 2300, 'DDR4'),
(4, 'Corsair', 2400, 'DDR4'),
(5, 'Corsair', 3200, 'DDR5'),
(6, 'Corsair', 4200, 'DDR5'),
(7, 'Corsair', 5200, 'DDR5'),
(8, 'Corsair', 6400, 'DDR5');

#aduc informatiile din tabel (DQL)
select * from PlacaDeBaza;

#inserare date in tabelul cu placile de baza(DML)
insert into PlacaDeBaza(ID, Nume, Marime, SlotProcesor) values
(1, 'Asus', 'E-ATX', '1150'),
(2, 'MSI', 'E-ATX', 'AM2'),
(3, 'Gigabyte', 'ATX', '1155'),
(4, 'ASRock', 'ATX', 'AM4'),
(5, 'Asus', 'microATX', 'AM2'),
(6, 'MSI', 'microATX', '1156'),
(7, 'Gigabyte', 'miniITX', 'AM4'),
(8, 'ASRock', 'miniITX', '1156');

#aduc informatiile din tabel (DQL)
select * from PlacaVideo;

#modificare tabel (DDL)
alter table PlacaVideo
add Producator varchar(20);

#modificare tabel (DDL)
alter table PlacaVideo
change Viteza Gaming boolean;

#inserare date in tabelul cu placi video(DML)
insert into PlacaVideo(ID, Nume, VideoRam, Gaming, Producator) values
(1, 'GTX1080', 8, 0, 'Nvidia'),
(2, 'RTX2080', 12, 0, 'Nvidia'),
(3, 'GTX3080', 16, 1, 'Nvidia'),
(4, 'GTX4090', 24, 1, 'Nvidia'),
(5, 'Radeon RX 5600 XT', 12, 0, 'AMD'),
(6, 'Radeon RX 5700 XT', 16, 0, 'AMD'),
(7, 'Radeon RX 6900 XT', 18, 1, 'AMD'),
(8, 'Radeon RX 6950 XT', 24, 1, 'AMD');

#aduc informatiile din tabel (DQL)
select * from SpatiuStocare;

#creare tabel (DDL)
alter table SpatiuStocare
change Nume Producator varchar(50);

#modificare tabel (DDL)
alter table SpatiuStocare
change Viteza Gaming boolean;

#inserare date in tabelul cu spatiile de stocare(DML)
insert into SpatiuStocare(ID, Producator, Capacitate, Gaming) values
(1, 'AData', 256, 0),
(2, 'Seagate', 256, 0),
(3, 'WesternDigital', 512, 0),
(4, 'Samsung', 1000, 1),
(5, 'Zotac', 2000, 1),
(6, 'SanDisk', 4000, 1);

#stergere tabel (DDL)
drop table spatiustocare;

#aduc informatiile din tabel (DQL)
select * from componente;
select * from carcasa;
select * from memorieram;
select * from placadebaza;

#creare tabel principal(DDL)
create table Build
(
ID int not null auto_increment,
Carcasa varchar(50),
Memorieram varchar(50),
PlacaDeBaza varchar(50),
PlacaVideo varchar(50),
Procesor varchar(50),
SpatiuStocare varchar(50),
primary key(ID)
);

#modificare tabel principal(DDL)
alter table Build
change Carcasa NumeCarcasa varchar(50);

#modificare tabel principal(DDL)
alter table Build
change MemorieRam NumeMemorieRam varchar(50);

#modificare tabel principal(DDL)
alter table Build
change PlacaDeBaza NumePlacaDeBaza varchar(50);

#modificare tabel principal(DDL)
alter table Build
change PlacaVideo NumePlacaVideo varchar(50);

#modificare tabel principal(DDL)
alter table Build
change Procesor NumeProcesor varchar(50);

#modificare tabel principal(DDL)
alter table Build
change SpatiuStocare ProducatorSpatiuStocare varchar(50);

#aduc informatiile din tabel (DQL)
select * from carcasa;
select * from memorieram;
select * from placadebaza;
select * from placavideo;
select * from procesor;
select * from spatiustocare;

#inserare date in tabelul principal(DML)
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

#stergere tabel principal(DDL)
drop table Build;

#creare tabel principal (DDL)
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

#inserare date in tablul principal(DML)
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

#aduc informatiile din tabel (DQL)
select * from carcasa;
select * from memorieram;
select * from placadebaza;
select * from placavideo;
select * from procesor;
select * from spatiustocare;
select * from Build;

#modificare tabel principal(DDL) adaugare foreign key
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

#adaugarea unei coloane in tabel
alter table procesor
add Producator varchar(20);

alter table procesor
drop column Producator;

desc Procesor;
desc Build;

#aduc toate informatiile din tabel (DQL)
select * from Build;

select * from Carcasa;

#afisati toate datele pentru build-ul DeathNote
select * from Build where Denumire = 'DeathNote';

#afisati toate build-urile si numele carcaselor
select build.denumire, carcasa.Nume #ce tabele vrem si ce coloane
from build inner join carcasa #facem legatura intre cele doua tabele
on build.IDCarcasa=carcasa.ID; #facem legatura dintre cele doua coloane cu foreign key

#afisati toate build-urile cu carcasa "Corsair"
select build.denumire, carcasa.Nume #ce tabele vrem si ce coloane
from build inner join carcasa #facem legatura intre cele doua tabele
on build.IDCarcasa=carcasa.ID #facem legatura dintre cele doua coloane cu foreign key
where carcasa.nume = 'Corsair'; #filtram informatiile pe care le cautam

#afisati toate build-urile si numele carcaselor ordonate descendent
select build.denumire, carcasa.Nume #ce tabele vrem si ce coloane
from build right join carcasa #facem legatura intre cele doua tabele
on build.IDCarcasa=carcasa.ID #facem legatura dintre cele doua coloane cu foreign key
order by IDCarcasa desc; #ordonam dupa o anumita coloana descendent

#afisati toate build-urile si numele carcaselor ordonate descendent si limitam selectia
select build.denumire, carcasa.Nume #ce tabele vrem si ce coloane
from build left join carcasa #facem legatura intre cele doua tabele
on build.IDCarcasa=carcasa.ID #facem legatura dintre cele doua coloane cu foreign key
order by IDCarcasa desc #ordonam dupa o anumita coloana descendent
limit 3; #limitam selectia la 3 randuri

#afisati toate build-urile cu carcasa "Lian Li"
select build.denumire, carcasa.Nume #ce tabele vrem si ce coloane
from build cross join carcasa #facem legatura intre cele doua tabele
on build.IDCarcasa=carcasa.ID #facem legatura dintre cele doua coloane cu foreign key
where carcasa.nume = 'Lian Li'; #filtram informatiile pe care le cautam

select* from placavideo;

#afisati toate build-urile cu placa video "GTX4090"
select build.Denumire, placavideo.Nume #ce tabele vrem si ce coloane
from build inner join placavideo #facem legatura intre cele doua tabele
on build.IDPlacaVideo=placavideo.ID #facem legatura dintre cele doua coloane cu foreign key
where placavideo.nume = 'GTX4090'; #filtram informatiile pe care le cautam

select * from procesor;

#afisati toate build-urile cu procesor "Intel i7"
select build.Denumire, procesor.Nume #ce tabele vrem si ce coloane
from build inner join procesor #facem legatura intre cele doua tabele
on build.IDProcesor=procesor.ID #facem legatura dintre cele doua coloane cu foreign key
where procesor.nume = 'Intel i7'; #filtram informatiile pe care le cautam

#afisati toate build-urile cu procesoare "Intel" si placi video cu producatorul "Nvidia"
select build.Denumire, placavideo.Producator, procesor.Nume #ce tabele vrem si ce coloane
from build inner join placavideo inner join procesor #facem legatura intre tabele
on build.IDPlacaVideo=placavideo.ID and build.IDProcesor=procesor.ID #facem legatura dintre coloane cu foreign key
where placavideo.Producator = 'Nvidia' and procesor.Nume like 'Intel%'; #filtram informatiile pe care le cautam

#afisati toate build-urile cu procesoare "AMD", placi video cu producatorul "AMD" si placa de baza "Gigabyte"
select build.Denumire, placavideo.Producator, procesor.Nume #ce tabele vrem si ce coloane
from build inner join placavideo inner join procesor inner join placadebaza #facem legatura intre tabele
on build.IDPlacaVideo=placavideo.ID and build.IDProcesor=procesor.ID and build.IDPlacaDeBaza=placadebaza.ID #facem legatura dintre coloane cu foreign key
where placavideo.Producator = 'AMD' and procesor.Nume like 'AMD%' and placadebaza.Nume = 'Gigabyte'; #filtram informatiile pe care le cautam

#afisati toate build-urile cu procesoare "Intel", placi video cu producatorul "Nvidia" si placa de baza "Asus"
select build.Denumire, placavideo.Producator, procesor.Nume #ce tabele vrem si ce coloane
from build inner join placavideo inner join procesor inner join placadebaza #facem legatura intre tabele
on build.IDPlacaVideo=placavideo.ID and build.IDProcesor=procesor.ID and build.IDPlacaDeBaza=placadebaza.ID #facem legatura dintre coloane cu foreign key
where placavideo.Producator = 'Nvidia' and procesor.Nume like 'Intel%' and placadebaza.Nume = 'Asus'; #filtram informatiile pe care le cautam

#afisati toate build-urile cu procesoare "AMD", placi video cu numele "Radeon" si placa de baza "ASRock"
select build.Denumire, placavideo.Producator, procesor.Nume #ce tabele vrem si ce coloane
from build inner join placavideo inner join procesor inner join placadebaza #facem legatura intre tabele
on build.IDPlacaVideo=placavideo.ID and build.IDProcesor=procesor.ID and build.IDPlacaDeBaza=placadebaza.ID #facem legatura dintre coloane cu foreign key
where placavideo.Nume like 'Radeon%' and procesor.Nume like 'AMD%' and placadebaza.Nume = 'ASRock'; #filtram informatiile pe care le cautam

#afisati toate build-urile cu carcasa "Corsair"
select build.Denumire, carcasa.Nume #ce tabele vrem si ce coloane
from build inner join carcasa #facem legatura intre cele doua tabele
on build.IDCarcasa=carcasa.ID #facem legatura dintre cele doua coloane cu foreign key
where carcasa.nume = 'Corsair'; #filtram informatiile pe care le cautam

#folosim subquery pentru a afisa toate denumirile de build-uri cu IDCarcasa mai mare de 2 
select build.Denumire, build.IDCarcasa
from build
where build.IDCarcasa > (Select build.IDCarcasa from build where IDCarcasa=2);

#afisati toate build-urile cu carcasa "Lian Li" folosind un subquery
select build.Denumire, carcasa.Nume #ce tabele vrem si ce coloane
from build cross join carcasa #facem legatura intre cele doua tabele
on build.IDCarcasa=carcasa.ID #facem legatura dintre cele doua coloane cu foreign key
where carcasa.Nume = (select carcasa.Nume from carcasa where carcasa.Nume = 'Lian Li');


#afisati toate build-urile cu carcasa "Lian Li" si placa de baza "MSI" folosind un subquery
#MySQL nu poate returna mai multe randuri in cazul unui subquery
select build.Denumire, carcasa.Nume, placadebaza.Nume #ce tabele vrem si ce coloane
from build cross join carcasa inner join placadebaza #facem legatura intre tabele
on build.IDCarcasa=carcasa.ID and build.IDPlacaDeBaza=placadebaza.ID #facem legatura dintre coloane cu foreign key
where carcasa.Nume = (select carcasa.Nume from carcasa where carcasa.Nume = 'Lian Li') and placadebaza.Nume = (select placadebaza.Nume from placadebaza where placadebaza.Nume = 'MSI'); #filtram informatiile pe care le cautam

#afisati toate build-urile cu carcasa "Lian Li" si IDPlacaDeBaza "6" folosind un subquery
select build.Denumire, carcasa.Nume, placadebaza.Nume #ce tabele vrem si ce coloane
from build cross join carcasa inner join placadebaza #facem legatura intre tabele
on build.IDCarcasa=carcasa.ID and build.IDPlacaDeBaza=placadebaza.ID #facem legatura dintre coloane cu foreign key
where carcasa.Nume = (select carcasa.Nume from carcasa where carcasa.Nume = 'Lian Li') and build.IDPlacaDeBaza = (select build.IDPlacaDeBaza from build where build.IDPlacaDeBaza = 6); #filtram informatiile pe care le cautam

#afisati toate build-urile cu carcasa "Cooler Master" si IDPlacaDeBaza "1" folosind un subquery
select build.Denumire, carcasa.Nume, placadebaza.Nume #ce tabele vrem si ce coloane
from build cross join carcasa inner join placadebaza #facem legatura intre tabele
on build.IDCarcasa=carcasa.ID and build.IDPlacaDeBaza=placadebaza.ID #facem legatura dintre coloane cu foreign key
where carcasa.Nume = (select carcasa.Nume from carcasa where carcasa.Nume = 'Cooler Master') and build.IDPlacaDeBaza = (select build.IDPlacaDeBaza from build where build.IDPlacaDeBaza = 2); #filtram informatiile pe care le cautam

#afisati toate build-urile cu procesor "AMD Ryzen 3" si PlacaVideo cu VideoRam egal cu 18 folosind un subquery
select build.Denumire, procesor.Nume, placavideo.VideoRam #ce tabele vrem si ce coloane
from build cross join procesor inner join placavideo #facem legatura intre tabele
on build.IDProcesor=procesor.ID and build.IDPlacaVideo=placavideo.ID #facem legatura dintre coloane cu foreign key
where procesor.Nume = (select procesor.Nume from procesor where procesor.Nume like 'AMD Ryzen 3') and placavideo.VideoRam = (select placavideo.VideoRam from placavideo where placavideo.VideoRam = 18); #filtram informatiile pe care le cautam


select * from placadebaza;
select * from build;
select * from carcasa;
select * from placavideo;
select * from procesor;
select * from memorieram;
select * from spatiustocare;

delete from memorieram
where ID=6;

update procesor
set Nuclee = 4
where ID=1;

#afisare informatii trunchiate (DDL)
select memorieram.frecventa
from memorieram
where truncate(frecventa, 2);