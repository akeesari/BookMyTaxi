Create table Grade(
Id int not null identity(1,1),
Name varchar(10) not null,
CreatedOn DateTime null,
CreatedBy varchar(100) null,
UpdatedOn DateTime null,
UpdatedBy varchar(100) null,
IsDeleted bit not null,
CONSTRAINT PK_GradeId PRIMARY KEY CLUSTERED (Id ASC),
CONSTRAINT UC_GradeName unique(Name),
);