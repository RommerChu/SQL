/*Task 1 Part2 - Database Design*/
/*
In this section, youu will be given a complete description of the requirements specification of a given enterprise. 
From the specifications, you will have to demonstrate an ability to use the methodologies that we have tackled in the course so far.
More formally, based on specifications below, in this project you will have to:
1. Develop a diagram representing the tables and the relationships amont them.
2. Create the tables and their attributes(i.e the schemas) in MSSQL 2008.
3. Create 10 sample records within the appropriate tables.

*****************Not yet been discussed********************************
4.Set up indexes, and configure auto indexing, shrinkage, and backups as you feel
5.Ensure that you have a redundant copy of the database on another computer (i.e log shipping or repliccation or mirrorring) to provide high availability
*/

Use University
Select * from Categories

/*****************************
Table: Categories
*****************************/
CREATE TABLE Categories (
  id TINYINT NOT NULL PRIMARY KEY,
  Category_Name VARCHAR(50) NULL,
  Date_Created DATETIME NULL,
  Date_Modified DATETIME NULL,
) 

/*****************************
Table: Staff
*****************************/
CREATE TABLE Staff (
  id INT NOT NULL Identity(1,1) PRIMARY KEY,
  First_Name VARCHAR(50) NULL,
  Last_Name VARCHAR(50) NULL,
  Position VARCHAR(50) NULL,
  Address VARCHAR(200) NULL,
  Phone_Number VARCHAR(15) NULL,
  Date_Created DATETIME NULL,
  Date_Modified DATETIME NULL,
)

/*****************************
Table: Advisors
*****************************/
CREATE TABLE Advisors (
  id INT NOT NULL Identity(1,1) PRIMARY KEY,
  Staff_id INT NOT NULL REFERENCES Staff(id),
  Date_Created DATETIME NULL,
  Date_Modified DATETIME NULL,
)

/*****************************
Table: Students
*****************************/
CREATE TABLE Student (
  id INT NOT NULL Identity(1,1) PRIMARY KEY,
  First_Name VARCHAR(50) NOT NULL,
  Last_Name VARCHAR(50) NOT NULL,
  Address VARCHAR(255) NOT NULL,
  Gender TINYINT NOT NULL,
  Nationality VARCHAR(50) NOT NULL,
  Categories_id TINYINT NOT NULL REFERENCES Categories(id),
  Advisors_id INT NOT NULL REFERENCES Advisors(id),
  Special_Needs VARCHAR(50) NOT NULL,
  Comments VARCHAR(255) NULL,
  Date_Created DATETIME NULL,
  Date_Modified DATETIME NULL,
)
select * from Student
drop table Student

ALTER TABLE [dbo].[Student]
ALTER column Gender varchar(2)
GO

/*****************************
Table: Contacts
*****************************/
CREATE TABLE Contacts (
  id INT NOT NULL Identity(1,1) PRIMARY KEY,
  SSN VARCHAR(50) NULL,
  First_Name VARCHAR(50) NULL,
  Last_Name VARCHAR(50) NULL,
  Student_id INT NOT NULL REFERENCES Student(id),
  Relationship VARCHAR(50) NULL,
  Address VARCHAR(255) NULL,
  Telephone VARCHAR(25) NOT NULL,
)

ALTER table [dbo].[Contacts]
add Date_Created datetime, Date_Modified datetime
go



/*****************************
Table: Status
*****************************/
CREATE TABLE Status (
  id INT NOT NULL PRIMARY KEY,
  Status VARCHAR(50) NULL DEFAULT 'Waiting, Active, Non-Active',
  Date_Created DATETIME NULL,
  Date_Modified DATETIME NULL,
 )




/*****************************
Table: Hall Residence
*****************************/
CREATE TABLE Hall_Residence (
  id INT NOT NULL Identity(1,1) PRIMARY KEY,
  Residence_Name VARCHAR(100) NOT NULL,
  Address VARCHAR(100) NOT NULL,
  Telephone VARCHAR(25) NOT NULL,
  Manager_Name VARCHAR(50) NOT NULL,
  Place_Number VARCHAR(25) NULL,
  Date_Created DATETIME NULL,
  Date_Modified DATETIME NULL,
  ) 

/*****************************
Table: Flat
*****************************/
CREATE TABLE Flat (
  id INT NOT NULL Identity(1,1) PRIMARY KEY,
  Flat_Number INT NOT NULL,
  Room_Number INT NOT NULL,
  Date_Created DATETIME NULL,
  Date_Modified DATETIME NULL,
  
  )

/*****************************
Table: Accommodation Type
*****************************/
CREATE TABLE Accommodation_Type (
  id INT NOT NULL PRIMARY KEY,
  Hall_Residence_id INT NOT NULL REFERENCES Hall_Residence(id),
  Flat_id INT NOT NULL REFERENCES Flat(id),
  Date_Created DATETIME NULL,
  Date_Modified DATETIME NULL,
  
  )


/*****************************
Table: Student Accommodation
*****************************/
CREATE TABLE Student_Accommodation (
  id INT NOT NULL Identity(1,1) PRIMARY KEY,
  Accommodation_Type_id INT NOT NULL REFERENCES Accommodation_Type(id),
  Status_id INT NOT NULL REFERENCES Status(id),
  Contacts_id INT NOT NULL REFERENCES Contacts(id),
  Date_Created DATETIME NULL,
  Date_Modified DATETIME NULL,
  Student_id INT NOT NULL REFERENCES Student(id),
  )

/*****************************
Table: Course
*****************************/
CREATE TABLE Course (
  id INT NOT NULL Identity(1,1) PRIMARY KEY,
  Course_Title VARCHAR(100) NOT NULL,
  Instructor_First_Name VARCHAR(50) NULL,
  Instructor_Last_Name VARCHAR(50) NULL,
  Room_Number SMALLINT NULL,
  Date_Created VARCHAR(50) NULL,
  Date_Modified VARCHAR(50) NULL,
 )


/*****************************
Table: Leases
*****************************/
CREATE TABLE Leases (
  id INT NOT NULL Identity(1,1) PRIMARY KEY,
  Student_id INT NOT NULL REFERENCES Student(id),
  Student_Accomodation_id INT NOT NULL REFERENCES Student_Accomodation(id),
  Accommodation_Type_id INT NOT NULL REFERENCES Accommodation_Type(id),
  Address VARCHAR(255) NULL,
  Lease_Start_Date DATETIME NULL,
  Lease_End_Date DATETIME NULL,
  Date_Created DATETIME NULL,
  Date_Modified DATETIME NULL,
  )



/*****************************
Table: Invoices
*****************************/
CREATE TABLE Invoices (
  id INT NOT NULL Identity(1,1) PRIMARY KEY,
  Leases_id INT NOT NULL REFERENCES Leases(id),
  Student_id INT NOT NULL REFERENCES Student(id),
  Student_Accommodation_id INT NOT NULL REFERENCES Student_Accommodation(id),
  Accomodation_Type_id INT NOT NULL REFERENCES Accommodation_Type(id),
  Payment_Due_Date DATETIME NOT NULL,
  Payment_id INT NOT NULL REFERENCES Payment(id),
  First_Reminder DATETIME NULL,
  Second_Reminder DATETIME NULL,
  Date_Created DATETIME NULL,
  Date_Modified DATETIME NULL,
  )

  select * from Invoices


/*****************************
Table: Payment
*****************************/
CREATE TABLE Payment (
  id INT NOT NULL Identity(1,1) PRIMARY KEY,
  Payment_Date DATETIME NULL,
  Method VARCHAR(50) NULL DEFAULT 'Credit,Debit,Cash,Cheque,MO',
  Date_Created DATETIME NULL,
  Date_Modified DATETIME NULL,
)

select * from Payment


/*****************************
Table: Accomodation_Staff
*****************************/
CREATE TABLE Accomodation_Staff (
  id INT NOT NULL Identity(1,1) PRIMARY KEY,
  First_Name VARCHAR(50) NULL,
  Last_Name VARCHAR(50) NULL,
  Position VARCHAR(50) NULL,
  Address VARCHAR(100) NULL,
  Phone VARCHAR(50) NULL,
  Email VARCHAR(100) NULL,
  Date_Created DATETIME NULL,
  Date_Modified DATETIME NULL,
  )

 select * from Accomodation_Staff

/*****************************
Table: Flat_Inspection
*****************************/
CREATE TABLE Flat_Inspection (
  id INT NOT NULL Identity(1,1) PRIMARY KEY,
  Flat_id INT NOT NULL REFERENCES Flat(id),
  Condition VARCHAR(50) NULL,
  Accomodation_Staff_id INT NOT NULL REFERENCES Accomodation_Staff(id),
  Comments VARCHAR(100) NULL,
  Date_Created DATETIME NULL,
  Date_Modified DATETIME NULL,
 )
 
 select * from Flat_Inspection

/*****************************
Table: Student_Courses 
*****************************/
CREATE TABLE Student_Courses (
  id INT NOT NULL Identity(1,1) PRIMARY KEY,
  Student_id INT NULL REFERENCES Student(id),
  Course_id INT NULL REFERENCES Course(id),
  Dated_Created DATETIME NULL,
  Date_Modified DATETIME NULL,
)

select * from Student_Courses


/*****************************
Table: Hall_Res_Rooms
*****************************/
CREATE TABLE Hall_Res_Rooms (
  id INT NOT NULL PRIMARY KEY,
  Hall_Residence_id INT NOT NULL REFERENCES Hall_Residence(id),
  Room_Number INT NOT NULL,
  Date_Created DATETIME NULL,
  Date_modified DATETIME NULL,
)

select * from Hall_Res_Rooms

/*****************************
Table: Flat_Rooms
*****************************/
CREATE TABLE Flat_Rooms (
  id INT NOT NULL PRIMARY KEY,
  Flat_id INT NOT NULL REFERENCES Flat(id),
  Room_Number INT NOT NULL,
  Room_Capacity TINYINT NULL,
  Date_Created DATETIME NULL,
  Date_modified DATETIME NULL,
    
)select * from Flat_Rooms