Create table Parent(
Id int not null identity(1,1),
Name varchar(100) not null,
FirstName varchar(50) not null,
LastName varchar(50) not null,
PhoneNumber varchar(13) not null,
EmailAddress varchar(100) not null,
Gender varchar(10) not null,
RelationShip varchar(20) null, --Maintain a table/Excel to list out all values
CreatedOn DateTime null,
CreatedBy varchar(100) null,
UpdatedOn DateTime null,
UpdatedBy varchar(100) null,
IsDeleted bit null, --0 is false and 1 is true
CONSTRAINT PK_ParentId PRIMARY KEY CLUSTERED (Id ASC),
--CONSTRAINT UC_StudIdAndRel unique(Name,StudentId,RelationShip),
);