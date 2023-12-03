# ProiectTM-SQL

## Introduction:
- We will be creating a database for storing and retrieving information about PC builds including all the parts from these builds.

  Types of data query used:
- DDL or Data Definition Language that consists of the SQL commands that can be used to define the database schema. It simply deals with descriptions of the database schema and is used to create and modify the structure of database objects in the database.
- DML or Data Manipulation Language that consists of the SQL commands that deal with the manipulation of data present in the database. This includes most of the SQL statements.
- DQL or Data Query Language statements are used for performing queries on the data within schema objects. The purpose of the DQL Command is to get some schema relation based on the query passed to it.

## Type of commands used:
### Data Definition Language (DDL)
- Create
- Drop
- Alter
- Rename

### Data Manipulation Language (DML)
- Insert
- Update
- Delete

### Data Query Language (DQL)
- Select

### Name of Data Base: PC_Sale

  Tables:
  
- Build - main table
- Carcasa
- MemorieRam
- PlacaDeBaza
- PlacaVideo
- Procesor

 ### Information on each table
#### Build - main table:
Contains columns:
- ID (primary key)
- Denumire
- IDCarcasa (foreign key IDCarcasa references carcasa ID)
- IDMemorieRam (foreign key IDMemorieram references MemorieRam ID)
- IDPlacaDeBaza (foreign key IDPlacaDeBaza references PlacaDeBaza ID)
- IDPlacaVideo (foreign key IDPlacaVideo references PlacaVideo ID)
- IDProcesor (foreign key IDProcesor references Procesor ID)
- IDSpatiuDeStocare (foreign key IDSpatiuStocare references SpatiuStocare ID)

#### Carcasa:
Contains columns:
- ID (primary key)
- Nume
- Marime

#### MemorieRam:
Contains columns:
- ID (primary key)
- Nume
- Frecventa
- Tip

#### PlacaDeBaza:
Contains columns:
- ID (primary key)
- Nume
- Marime
- Slot Procesor

#### PlacaVideo:
Contains columns:
- ID (primary key)
- Nume
- VideoRam
- Gaming
- Producator

#### Procesor:
Contains columns:
- ID
- Nume
- Frecventa
- Nuclee

#### SpatiuStocare:
Contains columns:
- ID
- Producator
- Capacitate
- Gaming



link to collection 
