# Database Project for PC-Sale

[Database](https://github.com/IsFloros/ProiectTM-SQL/blob/main/PC_Sale.sql)
Tools used: MySQL Workbench

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
- Truncate

### Data Manipulation Language (DML)
- Insert
- Update
- Delete

### Data Query Language (DQL)
- Select
- Filters
- Subquerys

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
 ### You can find below the database schema that was generated through Reverse Engineer and which contains all the tables and the relationships between them. 
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


