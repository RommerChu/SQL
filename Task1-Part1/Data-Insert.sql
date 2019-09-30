Use University

/*****************************Categories***********************************************/
Insert into Categories(id,Category_Name,Date_Created,Date_Modified) 
values
(1, 'Freshmen', '2019-09-28','2019-09-28'),
(2,'Sophomore', '2019-09-28','2019-09-28'),
(3,'Junior', '2019-09-28','2019-09-28'),
(4,'Senior', '2019-09-28','2019-09-28')

select * from Categories
select count(*) from Categories

/******************************Staff**********************************************/

Insert into Staff(First_Name, Last_Name, Position, Address, Phone_Number, Date_Created, Date_Modified) 
values
('Rommer','Chu','Dean','28 Darsam Crt Orangeville ON','416-720-2720','2019-09-28','2019-09-28'),
('Corazon','Chu','Assistant Dean','28 Darsam Crt, Orangeville, ON','416-720-2700','2019-09-28','2019-09-28'),
('John Paul','Smith','Supervisor','123 North York, ON','514-258-1245','2019-09-28','2019-09-28'),
('Abigail','Tsan','Assistant Supervisor','12 Whitby, ON','647-123-2720','2019-09-28','2019-09-28'),
('Peter John','Roe','Advisor','100, Hunrontario st., Parry Sound, ON','547-126-987','2019-09-28','2019-09-28'),
('Zeek','Cummins','Advisor','76 Dundas St, Parry Sound, ON','547-126-987','2019-09-28','2019-09-28'),
('Tetley','Tea','Advisor','100 Parry dr,  Parry Sound, ON','547-126-987','2019-09-28','2019-09-28'),
('Fraya','Beau','Advisor','5 Tujttle Crt, Ajax, ON','874-658-215','2019-09-28','2019-09-28'),
('Squirtle','Stone','Clerk','1021 Jane St, Scarborough, ON','456-123-789','2019-09-28','2019-09-28'),
('Lovely','Rake','Clerk','33 Hansen, Brampton, ON','547-126-987','2019-09-28','2019-09-28')

select * from Staff
select count(*) from staff

/***************************Advisors*************************************************/

Insert into Advisors 
values 
(5, '2019-09-28','2019-09-28'),
(6, '2019-09-28','2019-09-28'),
(7, '2019-09-28','2019-09-28'),
(8, '2019-09-28','2019-09-28')

select * from Advisors
select count(*) from Advisors

select * from staff
select * from Advisors

select staff.id, staff.First_Name, staff.Position from staff right join Advisors on Advisors.Staff_id = staff.id


/******************************Student**********************************************/

Insert into Student(First_Name, Last_Name, Address, Gender, Nationality, Categories_id, Advisors_id, Special_Needs, Comments, Date_Created, Date_Modified) 
values
('William','Smith','123 Center Rd, Mono ON','M','American', 1, 2, 'Tutorial need', 'NONE','2019-09-28','2019-09-28'),
('Steven','Frott','101 Amaranth St, Subsurb ON','M','Canadian', 2, 3, 'None', 'None','2019-09-28','2019-09-28'),
('Stacey','Adams','1150 Rutherford, Toronto ON','F','Irish', 2, 4, 'None', 'None','2019-09-28','2019-09-28'),
('Vannesa','Doe','5th St. Center Ave, North York ON','F','British', 3, 5, 'None', 'Graduating next year','2019-09-28','2019-09-28'),
('Matt','Thomas','100 Daisy Drive, Caledon ON','M','Canadian', 4, 5, 'Process graduation', 'Almost complete','2019-09-28','2019-09-28'),
('Corazon','Ramos','19 Orchids St.Brampton ON','F','Canadian', 2, 5, 'None', 'Transfer','2019-09-28','2019-09-28'),
('Jeff','Blumberg','55 Sweet Candy Rd, Ajax ON','M','Canadian', 1, 3, 'None', 'None','2019-09-28','2019-09-28'),
('Hanna','Daviniche','10-A Richmond Ave, Richmond ON','F','German', 3, 4, 'None', 'None','2019-09-28','2019-09-28'),
('Victor','Wilson','40 First St, Orangeville ON','M','Canadian', 3, 4, 'None', 'None','2019-09-28','2019-09-28'),
('Juanito','Soler','1865 Dundas St, Peterbourough ON','M','Mexican', 4, 2, 'Translator', 'Requested for FF','2019-09-28','2019-09-28')

select * from Student

/******************************Contacts**********************************************/

Insert into Contacts(SSN, First_Name, Last_Name, Student_id, Relationship, Address, Telephone, Date_Created, Date_Modified) 
values
('5612251998','Robert','Smith',8,'Father','123 Center Rd, Mono ON','647-115-6985','2019-09-28','2019-09-28'),
('487966551','Nancy','Frott',9,'Mother','101 Amaranth St, Subsurb ON','519-224-6901','2019-09-28','2019-09-28'),
('785648533','Rupert','Adams',10,'Father','1150 Rutherford, Toronto ON','416-885-7793','2019-09-28','2019-09-28'),
('416885217','Adam','Doe',11,'Father','5th St. Center Ave, North York ON','905-554-4114','2019-09-28','2019-09-28'),
('785648533','Jackie','Allen',12,'Aunt','89 Daisy Drive, Caledon ON','699-224-5454','2019-09-28','2019-09-28'),
('5612779918','Juanito','Ramos',13,'Father','19 Orchids St.Brampton ON','645-123-1231','2019-09-28','2019-09-28'),
('785648533','Stephanie','Blumberg',14,'Mother','55 Sweet Candy Rd, Ajax ON','647-288-8818','2019-09-28','2019-09-28'),
('561277844','John','Daviniche',15,'Father','10-A Richmond Ave,Richmond ON','647-444-7771','2019-09-28','2019-09-28'),
('5612779951','Jack','Wilson',16,'Father','40 First St, Orangeville ON','905-453-5333','2019-09-28','2019-09-28'),
('4896665123','Anita','Soler',10,'Mother','1865 Dundas St, Peterbourough ON','416-885-7793','2019-09-28','2019-09-28')

select * from contacts
select * from student

select count(*) from student 
select count(*) from contacts 

select contacts.id, Student_id,contacts.Relationship, Contacts.Telephone from Contacts left join student on student.id = contacts.id


/******************************Status**********************************************/
Insert into Status(id,Status, Date_Created, Date_Modified)
values (1,'Active','2019-09-28','2019-09-28'),
(2,'Waiting','2019-09-28','2019-09-28'),
(3,'Non-Active','2019-09-28','2019-09-28')

select * from Status


/******************************Hall Residence***************************************/

Insert into Hall_Residence
Values
('Alpha Tower', '255 Chrysler st., University belt, ON', '645-888-1551', 'Steven Martin', '50', '2019-09-28','2019-09-28' ),
('Bravo Tower', '257 Chrysler st., University belt, ON', '591-665-2245', 'Victoria Ly', '50', '2019-09-28','2019-09-28' ),
('Charlie Tower', '259 Chrysler st., University belt, ON', '905-123-456', 'Jane Matthew', '50', '2019-09-28','2019-09-28' ),
('Delta Tower', '261 Chrysler st., University belt, ON', '647-555-7773', 'Connor Clive', '50', '2019-09-28','2019-09-28' )


select * from Hall_Residence


/******************************Flat***************************************/

Insert into Flat
values
(1,1,'2019-09-28','2019-09-28'),
(1,2,'2019-09-28','2019-09-28'),
(1,3,'2019-09-28','2019-09-28'),
(1,4,'2019-09-28','2019-09-28'),
(1,5,'2019-09-28','2019-09-28'),
(1,6,'2019-09-28','2019-09-28'),
(1,7,'2019-09-28','2019-09-28'),
(1,8,'2019-09-28','2019-09-28'),
(1,9,'2019-09-28','2019-09-28'),
(1,10,'2019-09-28','2019-09-28'),
(2,1,'2019-09-28','2019-09-28'),
(2,2,'2019-09-28','2019-09-28'),
(2,3,'2019-09-28','2019-09-28'),
(2,4,'2019-09-28','2019-09-28'),
(2,5,'2019-09-28','2019-09-28'),
(2,6,'2019-09-28','2019-09-28'),
(2,7,'2019-09-28','2019-09-28'),
(2,8,'2019-09-28','2019-09-28'),
(2,9,'2019-09-28','2019-09-28'),
(2,10,'2019-09-28','2019-09-28'),
(3,1,'2019-09-28','2019-09-28'),
(3,2,'2019-09-28','2019-09-28'),
(3,3,'2019-09-28','2019-09-28'),
(3,4,'2019-09-28','2019-09-28'),
(3,5,'2019-09-28','2019-09-28'),
(3,6,'2019-09-28','2019-09-28'),
(3,7,'2019-09-28','2019-09-28'),
(3,8,'2019-09-28','2019-09-28'),
(3,9,'2019-09-28','2019-09-28'),
(3,10,'2019-09-28','2019-09-28')

select * from Flat


/******************************Accommodation Type***************************************/

Insert into Accommodation_Type (id,Hall_Residence_id,Flat_id,Date_Created,Date_Modified)
values
(1,2,1,'2019-09-28','2019-09-28'),
(2,3,1,'2019-09-28','2019-09-28'),
(3,4,1,'2019-09-28','2019-09-28'),
(4,5,1,'2019-09-28','2019-09-28'),
(5,2,2,'2019-09-28','2019-09-28'),
(6,3,2,'2019-09-28','2019-09-28'),
(7,4,2,'2019-09-28','2019-09-28'),
(8,5,2,'2019-09-28','2019-09-28'),
(9,2,2,'2019-09-28','2019-09-28'),
(10,3,2,'2019-09-28','2019-09-28')

select * from Accommodation_Type
select * from Hall_Residence
select * from Flat
select * from Student

select Hall_Residence.id, Hall_Residence.Residence_Name from Hall_Residence left join Flat on Flat.id = Hall_Residence.Residence_Name

/******************************Student Accomodation***************************************/

insert into Student_Accommodation (Accommodation_Type_id, Status_id, Contacts_id, Date_Created, Date_Modified, student_id)
values 
(1,1,2,'2019-09-28','2019-09-28',8),
(2,1,3,'2019-09-28','2019-09-28',9),
(3,2,4,'2019-09-28','2019-09-28',10),
(4,2,5,'2019-09-28','2019-09-28',11),
(5,1,6,'2019-09-28','2019-09-28',12),
(6,1,7,'2019-09-28','2019-09-28',13),
(7,2,8,'2019-09-28','2019-09-28',14),
(8,2,9,'2019-09-28','2019-09-28',15),
(9,1,10,'2019-09-28','2019-09-28',16),
(10,1,10,'2019-09-28','2019-09-28',16)

select * from Student_Accommodation
select * from Accommodation_Type
select * from Status
select * from contacts
select * from Student


/******************************Course***************************************/

insert into Course (Course_Title, Instructor_First_Name, Instructor_Last_Name, Room_Number, Date_Created, Date_Modified)
values
('Supply Chain Management', 'Robert', 'Fox', 1, '2019-09-28','2019-09-28'),
('Police', 'Sharon', 'Cummins',2, '2019-09-28', '2019-09-28'),
('Marketing', 'Jane','Ong', 3, '2019-09-28','2019-09-28'),
('IT', 'William','Spear', 4, '2019-09-28','2019-09-28'),
('Application Developer', 'Darth', 'Vader', 5, '2019-09-28','2019-09-28'),
('Pharmacy', 'Maan','Skywalker', 6, '2019-09-28','2019-09-28'),
('Medical Transcription', 'Babe','Piggy', 7, '2019-09-28','2019-09-28'),
('Law', 'Punjit','Sinya', 8, '2019-09-28','2019-09-28'),
('Social Community', 'Abigail','Chuahua', 9, '2019-09-28','2019-09-28'),
('Digital Media', 'Corrs', 'Impactika', 10, '2019-09-28','2019-09-28')

select * from Course

/******************************Leases***************************************/

insert into Leases (Student_id, Student_Accommodation_id, Accommodation_Type_id, Address, Lease_Start_Date, Lease_End_Date, Date_Created, Date_Modified)
values 
(8,2,2,'255 Chrysler st., University belt, ON','2019-10-02','2019-12-28','2019-09-28','2019-09-28'),
(9,4,2,'257 Chrysler st., University belt, ON','2019-10-20','2020-02-28','2019-09-28','2019-09-28'),
(10,7,2,'257 Chrysler st., University belt, ON','2019-12-02','2020-05-20','2019-09-28','2019-09-28'),
(11,5,2,'255 Chrysler st., University belt, ON','2019-12-02','2020-05-15','2019-09-28','2019-09-28'),
(12,6,2,'259 Chrysler st., University belt, ON','2019-11-01','2020-01-22','2019-09-28','2019-09-28'),
(13,8,2,'255 Chrysler st., University belt, ON','2019-11-01','2020-01-20','2019-09-28','2019-09-28'),
(14,2,2,'259 Chrysler st., University belt, ON','2019-10-30','2019-12-24','2019-09-28','2019-09-28'),
(15,4,2,'261 Chrysler st., University belt, ON','2019-10-19','2020-03-15','2019-09-28','2019-09-28'),
(16,10,2,'261 Chrysler st., University belt, ON','2019-11-05','2020-04-13','2019-09-28','2019-09-28'),
(17,9,2,'261 Chrysler st., University belt, ON','2019-12-01','2020-04-01','2019-09-28','2019-09-28')

select * from Leases

select * from Student
select * from Student_Accommodation
select * from Accommodation_Type
select * from Hall_Residence
select * from Flat

/******************************Invoices***************************************/

insert into Invoices(Leases_id, Student_id, Student_Accommodation_id, Accomodation_Type_id, Payment_Due_Date, Payment_id, First_Reminder, Second_Reminder, Date_Created, Date_Modified)
values
(2,8,1,2,'2019-10-28', 1,'2019-12-30','2020-03-30','2019-10-29','2019-10-29'),
(3,9,1,2,'2019-11-05', 2,'2019-12-30','2020-03-30','2019-10-29','2019-10-29'),
(4,10,2,3,'2019-10-28', 3,'2019-12-30','2020-03-30','2019-10-29','2019-10-29'),
(5,11,2,4,'2019-10-28', 4,'2019-12-30','2020-03-30','2019-10-29','2019-10-29'),
(6,12,3,4,'2019-10-28', 3,'2019-12-30','2020-03-30','2019-10-29','2019-10-29'),
(7,13,4,5,'2019-10-28', 2,'2019-12-30','2020-03-30','2019-10-29','2019-10-29'),
(8,14,5,7,'2019-10-28', 4,'2019-12-30','2020-03-30','2019-10-29','2019-10-29'),
(9,15,6,8,'2019-10-28', 3,'2019-12-30','2020-03-30','2019-10-29','2019-10-29'),
(10,16,7,9,'2019-10-28', 4,'2019-12-30','2020-03-30','2019-10-29','2019-10-29'),
(11,17,7,10,'2019-10-28', 1,'2019-12-30','2020-03-30','2019-10-29','2019-10-29')

select * from Payment
drop table Payment
select * from Accommodation_Type
select * from Student_Accommodation
select * from Invoices
Select * from Leases
select * from student


/******************************Payment***************************************/

insert into Payment(Method, Date_Created, Date_Modified)
values
('Cash','2019-09-29','2019-09-29'),
('Debit','2019-09-29','2019-09-29'),
('Credit','2019-09-29','2019-09-29'),
('Money Order','2019-09-29','2019-09-29')

select * from Payment

/******************************Accomodation_Staff***************************************/
insert into Accomodation_Staff(First_Name, Last_Name,Position,Address,Phone,Date_Created,Date_Modified)
values
('Anthony','Hopps','Manager','123 Address st, City, ON','645-789-4561','2019-09-29','2019-09-29'),
('Mercy','Beacou','Assistant Manager','456 Tower 1st, City, ON','554-265-0001','2019-09-29','2019-09-29'),
('Steven','Yang','Assistant Manager','123 Address st, City, ON','223-556-7531','2019-09-29','2019-09-29'),
('Jennifer','Smith','Account Manager','895 Address st, City, ON','321-456-3125','2019-09-29','2019-09-29'),
('Jose','Alejandro','Receptionist','123 Address st, City, ON','645-789-4561','2019-09-29','2019-09-29'),
('Anthony','Hopps','Inspection Manager','123 Address st, City, ON','645-789-4561','2019-09-29','2019-09-29'),
('Cris','Ewans','Inspector','123 Address st, City, ON','645-789-4561','2019-09-29','2019-09-29'),
('James','Dino','Inspector','123 Address st, City, ON','645-789-4561','2019-09-29','2019-09-29'),
('Darren','Dope','Accountant','123 Address st, City, ON','645-789-4561','2019-09-29','2019-09-29'),
('Paul','Patch','Clerk','123 Address st, City, ON','645-789-4561','2019-09-29','2019-09-29')

select * from Accomodation_Staff

/******************************Flat_Inspection***************************************/

insert into Flat_Inspection(Flat_id,Condition,Accomodation_Staff_id,Comments,Date_Created, Date_Modified)
values
(1,'Perfect',7,'none','2019-09-29','2019-09-29'),
(2,'Goog',7,'none','2019-09-29','2019-09-29'),
(3,'Good',8,'none','2019-09-29','2019-09-29'),
(4,'Small damage',8,'replace sidings','2019-09-29','2019-09-29'),
(5,'Good',8,'none','2019-09-29','2019-09-29'),
(12,'Good',8,'none','2019-09-29','2019-09-29'),
(15,'Good',7,'none','2019-09-29','2019-09-29'),
(17,'Good',7,'none','2019-09-29','2019-09-29'),
(25,'Good',7,'none','2019-09-29','2019-09-29'),
(26,'Good',8,'none','2019-09-29','2019-09-29')


select * from Flat_Inspection
select * from Accomodation_Staff where Position='inspector'


select Flat_Inspection.Accomodation_Staff_id, Accomodation_Staff.First_Name from Flat_Inspection inner join Accomodation_Staff on Accomodation_Staff.id=Flat_Inspection.Accomodation_Staff_id


/******************************Student_Course***************************************/
insert into Student_Courses(Student_id, Course_id, Dated_Created, Date_Modified)
values
(8,2,'2019-09-29','2019-09-29'),
(9,3,'2019-09-29','2019-09-29'),
(10,6,'2019-09-29','2019-09-29'),
(10,7,'2019-09-29','2019-09-29'),
(15,4,'2019-09-29','2019-09-29'),
(14,1,'2019-09-29','2019-09-29'),
(13,8,'2019-09-29','2019-09-29'),
(11,5,'2019-09-29','2019-09-29'),
(12,8,'2019-09-29','2019-09-29'),
(16,3,'2019-09-29','2019-09-29'),
(16,10,'2019-09-29','2019-09-29'),
(17,9,'2019-09-29','2019-09-29')


select * from Student
select * from Course
select * from Student_Courses

select Student_Courses.Student_id, Student_Courses.Course_id, Student.First_Name from Student_Courses left join Student on Student_Courses.Student_id = Student.id

/******************************Hall_Res_Room***************************************/

insert into Hall_Res_Rooms(id, Hall_Residence_id, Room_Number, Date_Created, Date_modified)
values
(1, 2, 10, '2019-09-29','2019-09-29'),
(2, 2, 20, '2019-09-29','2019-09-29'),
(3, 2, 30, '2019-09-29','2019-09-29'),
(4, 2, 40, '2019-09-29','2019-09-29'),
(5, 2, 50, '2019-09-29','2019-09-29'),
(6, 3, 10, '2019-09-29','2019-09-29'),
(7, 3, 20, '2019-09-29','2019-09-29'),
(8, 3, 30, '2019-09-29','2019-09-29'),
(9, 3, 40, '2019-09-29','2019-09-29'),
(10, 3, 50, '2019-09-29','2019-09-29'),
(11, 4, 10, '2019-09-29','2019-09-29'),
(12, 4, 20, '2019-09-29','2019-09-29'),
(13, 4, 30, '2019-09-29','2019-09-29'),
(14, 4, 40, '2019-09-29','2019-09-29'),
(15, 4, 50, '2019-09-29','2019-09-29'),
(16, 5, 10, '2019-09-29','2019-09-29'),
(17, 5, 20, '2019-09-29','2019-09-29'),
(18, 5, 30, '2019-09-29','2019-09-29'),
(19, 5, 40, '2019-09-29','2019-09-29'),
(20, 5, 50, '2019-09-29','2019-09-29')

select * from Hall_Res_Rooms
select * from Hall_Residence

select Hall_Res_Rooms.Hall_Residence_id, Hall_Residence.Residence_Name, Hall_Res_Rooms.Room_Number from Hall_Res_Rooms inner join Hall_Residence on Hall_Res_Rooms.Hall_Residence_id=Hall_Res_Rooms.Hall_Residence_id


/******************************Flat_Rooms***************************************/
insert into Flat_Rooms(id, Flat_id, Room_Number, Room_Capacity, Date_Created, Date_Modified)
values
(1,1,1,2,'2019-09-29','2019-09-29'),
(2,1,2,2,'2019-09-29','2019-09-29'),
(3,1,3,2,'2019-09-29','2019-09-29'),
(4,1,4,2,'2019-09-29','2019-09-29'),
(5,1,5,3,'2019-09-29','2019-09-29'),
(6,1,6,3,'2019-09-29','2019-09-29'),
(7,1,7,3,'2019-09-29','2019-09-29'),
(8,1,8,4,'2019-09-29','2019-09-29'),
(9,1,9,4,'2019-09-29','2019-09-29'),
(10,1,10,4,'2019-09-29','2019-09-29'),
(11,1,1,2,'2019-09-29','2019-09-29'),
(12,1,2,2,'2019-09-29','2019-09-29'),
(13,1,3,2,'2019-09-29','2019-09-29'),
(14,1,4,2,'2019-09-29','2019-09-29'),
(15,1,5,3,'2019-09-29','2019-09-29'),
(16,1,6,3,'2019-09-29','2019-09-29'),
(17,1,7,3,'2019-09-29','2019-09-29'),
(18,1,8,4,'2019-09-29','2019-09-29'),
(19,1,9,4,'2019-09-29','2019-09-29'),
(20,1,10,4,'2019-09-29','2019-09-29'),
(21,1,1,2,'2019-09-29','2019-09-29'),
(22,1,2,2,'2019-09-29','2019-09-29'),
(23,1,3,2,'2019-09-29','2019-09-29'),
(24,1,4,2,'2019-09-29','2019-09-29'),
(25,1,5,3,'2019-09-29','2019-09-29'),
(26,1,6,3,'2019-09-29','2019-09-29'),
(27,1,7,3,'2019-09-29','2019-09-29'),
(28,1,8,4,'2019-09-29','2019-09-29'),
(29,1,9,4,'2019-09-29','2019-09-29'),
(30,1,10,4,'2019-09-29','2019-09-29')

select * from Flat_Rooms
select * from Flat
