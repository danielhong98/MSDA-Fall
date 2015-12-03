#Create BuildingEnergy database
DROP Database IF EXISTS BuildingEnergy;
CREATE Database BuildingEnergy;
USE BuildingEnergy;

#EnergyCategories and EnergyTypes tables
Drop Table if Exists EnergyCategories;
Create Table EnergyCategories (CategoryID Int Primary Key, EnergyCategory Varchar (200) Not Null);
Insert into EnergyCategories (CategoryID, EnergyCategory) Values (1, 'Fossil'), (2, 'Renewable');

Drop Table if Exists EnergyTypes;
Create Table EnergyTypes (TypeID Int Primary Key, EnergyType Varchar (200) Not Null, CategoryID Int Not Null,
Foreign Key (CategoryID) References EnergyCategories(CategoryID));
Insert into EnergyTypes (TypeID, EnergyType, CategoryID)
Values (1, 'Electricity', 1), (2, 'Fuel Oil', 1), (3, 'Gas', 1), (4, 'Solar', 2), (5, 'Steam', 1), (6, 'Wind', 2);

#Join showwing energy categories and types
Select C.EnergyCategory, T.EnergyType
From EnergyCategories AS C
Inner Join EnergyTypes AS T
On C.CategoryID = t.CategoryID
Order by EnergyType;

#Buildings table
Drop Table if Exists Buildings;
Create Table Buildings (BuildingID Int Primary Key, BuildingName Varchar(200) Not Null);
Insert into Buildings (BuildingID, BuildingName)
Values (1, 'Borough of Manhattan Community College'), (2, 'Chrysler Building'), (3, 'Empire State Building');

#BuildingsEnergyType table
Drop Table if Exists BuildingsEnergyType;
Create Table BuildingsEnergyType (BuildingID Int Not Null, TypeID Int Not Null, Foreign Key (BuildingID) References Buildings(BuildingID),
Foreign Key (TypeID) References EnergyTypes(TypeID));
Insert into BuildingsEnergyType (BuildingID, TypeID) VALUES (1,4), (1,1), (1,5), (2,5), (2,1), (3,1), (3,5), (3,3);

#Join showing buildings and energy types
Select B.BuildingName AS Building, T.EnergyType as Type
From Buildings as B
Left Join BuildingsEnergyType as E
On B.BuildingID = E.BuildingID
Left Join EnergyTypes as T
On E.TypeID = T.TypeID
Order by Building, T.TypeID;

#Add information
Insert into EnergyTypes (TypeID, EnergyType, CategoryID) Values (7, 'Geothermal', 2);
Insert into Buildings (BuildingID, BuildingName) Values (4, 'Bronx Lion House'), (5, 'Brooklyn Children Museum');
Insert into BuildingsEnergyType (BuildingID, TypeID) VALUES (4,7), (5,1), (5,7);

#All buildings using renewable energies
SELECT B.BuildingName As Building From Buildings As B
Inner Join BuildingsEnergyType AS E
On B.BuildingID = E.BuildingID
Inner Join EnergyTypes As T
On E.TypeID = T.TypeID
Inner Join EnergyCategories As C
On T.CategoryID = C.CategoryID
Where C.EnergyCategory = 'Renewable'
Order by Building;

#Frequency with which energy types are used in various buildings
Select T.EnergyType As Type, Count(*) As Count From EnergyTypes as T
Left Join BuildingsEnergyType As E
On T.TypeID = E.TypeID
Left Join Buildings As B
On E.BuildingID = B.BuildingID
Group by Type
Order by Count Desc, Type ASC;