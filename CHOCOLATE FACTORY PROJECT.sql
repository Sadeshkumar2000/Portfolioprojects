// DATABASE -"Creating a chocolate database management" //

create database CHOCOLATEFACTORY;

 -- TABLE - "Employee Information of my company" --

CREATE TABLE Employee
( EmployeeId int,
  Name varchar (25),
  Age int,
  Gender varchar(25),
  Product varchar(25),
  Salary int,
  Manager_Id INT
  );
  
INSERT INTO Employee values ( 1,"Alexandra",27,"Male","CADBURY",30000,3 )
INSERT INTO Employee values ( 2,"walter White",33,"Male","Kitkat",40000,1 )
INSERT INTO Employee values ( 3,"John snow",25,"Male","Dairy milk",35000,2 )
INSERT INTO Employee values ( 4,"Steve",28,"Male","Amul dark",33000,5 )
INSERT INTO Employee values ( 5,"Saul Goodman",37,"Male","Hershey Bar",42000,4 )
INSERT INTO Employee values ( 6,"Lucas",24,"Male","Dove",32500,6 )
     
 -- TABLE - "Manager Information of my company" --

CREATE TABLE Manager
( ManagerId INT,
  Name varchar(25),
  Age int,
  Gender varchar(25),
  Salary int,
  client_id int
  );
  
INSERT INTO manager values (1 ,"Quarantino",45,"Male",55000,1)
INSERT INTO manager values (2 ,"Jack",47,"Male",50000,4)
INSERT INTO manager values (3 ,"Mark Antony",51,"Male",60000,6)
INSERT INTO manager values (4 ,"lokesh",56,"Male",58000,2)
INSERT INTO manager values (5 ,"Christoper",52,"Male",56000,3)
INSERT INTO manager values (6 ,"William",63000,"Male",67000,5)
    
  -- TABLE -"Client Information of my company" --
    
CREATE TABLE Client 
( ClientID int,
  Name varchar(25),
  Gender varchar(25),
  My_date date,
  EmployeeId int
  );
  
INSERT INTO client values (1,"Atlee","Male",CURRENT_DATE(),3)
INSERT INTO client values (2,"Jasmine","Female",CURRENT_DATE(),4)
INSERT INTO client values (3,"Daniel","Male",CURRENT_DATE(),1)
INSERT INTO client values (4,"Aria ferosina","Female",CURRENT_DATE(),6)
INSERT INTO client values (5,"Julia ann","Female",CURRENT_DATE(),2)
INSERT INTO client values (6,"Johnny Deep","Male",CURRENT_DATE(),5)

 -- ALTER KEY -"Add new column in client of our company" --

ALTER TABLE Client add column Email varchar(25)

UPDATE Client set Email ="atleethedata@gmail.com" where Name = "Atlee"
UPDATE Client set Email ="danielemperor@gmail.com" where Name = "Daniel"
UPDATE Client set Email ="jasminebeauty@gmail.com" where Name = "Jasmine"
UPDATE Client set Email ="ariadairymilk@gmail.com" where Name = "Aria ferosina"
UPDATE Client set Email ="juliablast2980@gmail.com" where Name = "Julia ann"
UPDATE Client set Email ="johnnypirates7@gmail.com" where Name = "Johnny Deep"

 -- SELECT STATEMENT - for all tables to visit it --
 
select * from Employee 
select * from manager 
select * from Client

 -- ALTER -"Add primary key to all our tables"--
 
ALTER TABLE Employee add primary key (EmployeeId)

ALTER TABLE Manager add primary key (ManagerId)

ALTER TABLE Client add primary key (ClientId)

 -- JOIN TABLE -"JOIN employee and manager table like Company details" --  
 
SELECT Employee.EmployeeId,Employee.Name,Employee.Product,Manager.ManagerId,Manager.Name from Employee inner join Manager on Employee.EmployeeId=Manager.ManagerId

 -- VIEWS -"Creating view our product easy to see our good product" --  
 
CREATE VIEW Our_product as select Product from Employee

 // Thats it for my chocolate factory information //



  

  
  
  
  

  
  
