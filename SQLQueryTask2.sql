Create Database EmpDep
USE EmpDep
Create TABLE Employees
(
  Id int Primary Key Identity,
  FullName nvarchar(25)NOT NULL Check(LEN(FullName) > 3),
  Salary money Check(Salary > 0),
  DepartmentId int references Departments(Id)
)
Create Table Departments
(
  Id int Primary Key Identity,
  Name nvarchar(25) Check(LEN(Name) > 2)
)
Insert into Departments(Name)
values('Development')
Insert into Employees(FullName,Salary,DepartmentId)
values('Abbas Abbasov',2000,2)
Select FullName From  Employees where DepartmentId =2