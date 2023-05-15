use LanguageSchool

create table EmployeeCategory 
(
	Id int primary key identity not null,
	[Name] nvarchar(max) null,
)

create table Document 
(
	Id int primary key identity not null,
	[Name] nvarchar(max) null,
	[Photo] nvarchar(max) null,
)

create table Manufacter 
(
	Id int primary key identity not null,
	[StartWorkDate] datetime null,
	[MainPhoto] nvarchar(max) null,
	[AdvancedPhoto] nvarchar(max) null,
)

create table Service 
(
	Id int primary key identity not null,
	[Name] nvarchar(max) null,
	[GenderRecomented] nvarchar(max) null,
	[Description] nvarchar(max) null,
	[Cost] nvarchar(max) null,
	[Sale] int null,
	[Duration] nvarchar(max) null,
	[MainPhoto] nvarchar(max) null,
)

create table Client
(
	Id int primary key identity not null,
	[LastName] nvarchar(max) null,
	[FirstName] nvarchar(max) null,
	[Patronymic] nvarchar(max) null,
	[Birthday] datetime null,
	[Phone] nvarchar(max) null,
	[Email] nvarchar(max) null,
	[Gender] nvarchar(max) null,
	[FirstEnterDate] datetime null,
	[Photo] nvarchar(max) null,
	[ClientTagId] int foreign key references ClientTag(Id) on delete cascade null,
)

create table Employee
(
	Id int primary key identity not null,
	[LastName] nvarchar(max) null,
	[FirstName] nvarchar(max) null,
	[Patronymic] nvarchar(max) null,
	[PasportSeries] nvarchar(max) null,
	[PasportNumber] nvarchar(max) null,
	[DivisionCode] nvarchar(max) null,
	[Gender] nvarchar(max) null,
	[PayCoefficient] nvarchar(max) null,
	[Birthday] datetime null,
	[EmployeeCategoryId] int foreign key references EmployeeCategory(Id) on delete cascade
)

create table Product 
(
	Id int primary key identity not null,
	[Name] nvarchar(max) null,
	[Cost] nvarchar(max) null,
	[Haracteristics] nvarchar(max) null,
	[Description] nvarchar(max) null,
	[Weight] int null,
	[Width] int null,
	[Length] int null,
	[Height] int null,
	ManufacturerId int foreign key references Manufacter(Id) on delete cascade null,
	[IsNotActual] bit null
)

create table EmployeeService 
(
	Id int primary key identity not null,
	ServiceId int foreign key references Service(Id) on delete cascade null,
	EmployeeId int foreign key references Employee(Id) on delete cascade null,
)

create table ServicePhoto
(
	Id int primary key identity not null,
	ServiceId int foreign key references Service(Id) on delete cascade null,
	PhotoId int foreign key references Photo(Id) on delete cascade null,
)

create table SignUpService
(
	Id int primary key identity not null,
	ClientId int foreign key references Client(Id) on delete cascade null,
	ServiceId int foreign key references Service(Id) on delete cascade null,
	Description nvarchar(max) null,
	StartDate datetime null,
)

create table SalesHistory
(
	Id int primary key identity not null,
	ClientId int foreign key references Client(Id) on delete cascade null,
	ServiceId int foreign key references Service(Id) on delete cascade null,
	TransactionDate datetime null,
)

create table SignUpServiceDocument
(
	Id int primary key identity not null,
	SignUpServiceId int foreign key references SignUpService(Id) on delete cascade null,
	DocumentId int foreign key references Document(Id) on delete cascade null
)

create table SaleProduct
(
	Id int primary key identity not null,
	SalesHistoryId int foreign key references SalesHistory(Id) on delete cascade null,
	ProductId int foreign key references Product(Id) on delete cascade null,
	[Count] int null,
)





