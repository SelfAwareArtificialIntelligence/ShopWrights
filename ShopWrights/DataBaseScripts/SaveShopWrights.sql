
CREATE TABLE UserIdsDefinition (UIDId int not null primary key,
						  UIDCode nvarchar(50) not null,
						  UIDDetails nvarchar(50) not null,
						  UIDStatus varchar(20) null,
						  UIDIsActive bit not null,
						  UIDCreatedBy int not null,
						  UIDCreatedDate date not null,
						  UIDModifiedBy int,
						  UIDModifiedDate date)

CREATE TABLE UserTypes (UTId int not null primary key,
						UTCode nvarchar(50) not null,
						  UTType nvarchar(50) not null,
						  UTStatus varchar(20)  not null,
						  UTIsActive bit  not null,
						  UTCreatedBy int  not null,
						  UTCreatedDate	date  not null,
						  UTModifiedBy int,
						  UTModifiedDate date)

CREATE TABLE Users (UId int not null primary key,
						UCode nvarchar(50) not null,
						  UDetails nvarchar(50) not null, ---JsonDATA
						  UTypeId int not null FOREIGN KEY REFERENCES UserTypes(UTId),
						  UStatus varchar(20)  not null,
						  UIsActive bit not null,
						  UCreatedBy int  not null,
						  UCreatedDate	date  not null,
						  UModifiedBy int  ,
						  UModifiedDate date)

CREATE TABLE CardDetails (CDId int not null primary key,
						  CDCode nvarchar(50) not null,
						  CDDetails nvarchar(50) not null,
						  CDScript nvarchar(50) null,
						  CDScriptLanguage Nvarchar(50) null,
						  CDStatus varchar(20)  not null,
						  CDIsActive bit  not null,
						  CDCreatedBy int not null FOREIGN KEY REFERENCES Users(UId),
						  CDCreatedDate	date,
						  CDModifiedBy int FOREIGN KEY REFERENCES Users(UId),
						  CDModifiedDate date)
