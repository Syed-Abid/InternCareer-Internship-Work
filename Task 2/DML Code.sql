USE videocompany;

CREATE TABLE BRANCH (
     Branch_id INT NOT NULL PRIMARY KEY,
     Branch_Address_no INT,
     Telephone_Number INT,
     FOREIGN KEY (Branch_Address_no) REFERENCES Branch_Address(Branch_Address_no)
);

INSERT INTO BRANCH(Branch_id, Branch_address_no, Telephone_NUmber) VALUES(100,1,'021-2343453');
INSERT INTO BRANCH(Branch_id, Branch_address_no, Telephone_NUmber) VALUES(101,2,'021-5674865');
INSERT INTO BRANCH(Branch_id, Branch_address_no, Telephone_NUmber) VALUES(102,3,'021-9384653');
INSERT INTO BRANCH(Branch_id, Branch_address_no, Telephone_NUmber) VALUES(103,4,'021-2948566');
INSERT INTO BRANCH(Branch_id, Branch_address_no, Telephone_NUmber) VALUES(104,5,'021-9365325');

CREATE TABLE Branch_Address(
	 Branch_Address_no INT NOT NULL PRIMARY KEY,
     city varchar(50),
     state varchar(50),
     Zipcode INT
);

INSERT INTO Branch_Address(Branch_Address_no,city,state,Zipcode) VALUES(1,'Karachi','Sindh',75409);
INSERT INTO Branch_Address(Branch_Address_no,city,state,Zipcode) VALUES(2,'Lahore','Punjab',87956);
INSERT INTO Branch_Address(Branch_Address_no,city,state,Zipcode) VALUES(3,'Islamabad','Punjab',64753);
INSERT INTO Branch_Address(Branch_Address_no,city,state,Zipcode) VALUES(4,'Peshawar','KPK',78541);
INSERT INTO Branch_Address(Branch_Address_no,city,state,Zipcode) VALUES(5,'Hyderabad','Sindh',64536);

CREATE TABLE Staff (
     Staff_no INT NOT NULL PRIMARY KEY,
     Staff_Name varchar(50),
     Position varchar(50),
     Salary INT,
     Manager_id INT,
     FOREIGN KEY (Manager_id) REFERENCES Manager(Manager_id)
);

INSERT INTO Staff(Staff_no,Staff_Name,Position,Salary,Manager_id) VALUES(10,'Floor Staff','Shift Incharge', 45000,1);
INSERT INTO Staff(Staff_no,Staff_Name,Position,Salary,Manager_id) VALUES(11,'Canteen Staff','Incharge', 50000,2);
INSERT INTO Staff(Staff_no,Staff_Name,Position,Salary,Manager_id) VALUES(12,'Washroom Staff','Supervisor', 60000,3);
INSERT INTO Staff(Staff_no,Staff_Name,Position,Salary,Manager_id) VALUES(13,'Cleaning Staff','Manager', 75000,4);
INSERT INTO Staff(Staff_no,Staff_Name,Position,Salary,Manager_id) VALUES(14,'Maintenance Staff','Assistance Manager', 85000,5);

CREATE TABLE Manager(
     Manager_id INT NOT NULL PRIMARY KEY,
     Manager_Name varchar(50)
);

INSERT INTO Manager(Manager_id,Manager_Name) VALUES(1,'Ahmed');
INSERT INTO Manager(Manager_id,Manager_Name) VALUES(2,'Amir');
INSERT INTO Manager(Manager_id,Manager_Name) VALUES(3,'Shoaib');
INSERT INTO Manager(Manager_id,Manager_Name) VALUES(4,'Daniyal');
INSERT INTO Manager(Manager_id,Manager_Name) VALUES(5,'Shahrukh');

CREATE TABLE Videos(
     Video_no INT NOT NULL PRIMARY KEY,
     Catalog_no INT,
     Title varchar(70),
     Category varchar(50),
     Daily_Rental INT,
     Cost INT,
     Video_Status varchar(30),
     Actor_name varchar(50),
     Director_name varchar(50)
);

INSERT INTO Videos(Video_no,Catalog_no,Title,Category,Daily_Rental,Cost,Video_Status,Actor_Name,Director_name) VALUES(1,1,'ShutterIsland','Drama',1000,5000,'Rented','BradPitt','Nolan');
INSERT INTO Videos(Video_no,Catalog_no,Title,Category,Daily_Rental,Cost,Video_Status,Actor_Name,Director_name) VALUES(2,2,'Rambo:The Last Blood','Action',2000,4000,'Rented','Syslvester Stallone','David');
INSERT INTO Videos(Video_no,Catalog_no,Title,Category,Daily_Rental,Cost,Video_Status,Actor_Name,Director_name) VALUES(3,3,'Lost','Thriller',1500,6000,'Available','Arnold','John');
INSERT INTO Videos(Video_no,Catalog_no,Title,Category,Daily_Rental,Cost,Video_Status,Actor_Name,Director_name) VALUES(4,4,'War','Action',1500,7000,'Available','Hrithik Roshan','Sajid');
INSERT INTO Videos(Video_no,Catalog_no,Title,Category,Daily_Rental,Cost,Video_Status,Actor_Name,Director_name) VALUES(5,5,'Breathe','Mystery',1000,8000,'Rented','Abhishek Bachan','Rahul');

CREATE TABLE Members(
     Memeber_no INT NOT NULL PRIMARY KEY,
     First_Name varchar(40),
     Last_Name varchar(40),
     Member_Address_no INT,
     Date_Registered DATE,
     Videos_Rented INT,
     FOREIGN KEY (Member_Address_no) REFERENCES Member_Address(Member_Address_no)
);

INSERT INTO Memebers(Memeber_no,First_Name,Last_Name,Member_Address_no,Date_Registered,Videos_Rented) VALUES(1,'Ahmed','Ali',1,12-1-24,5);
INSERT INTO Memebers(Memeber_no,First_Name,Last_Name,Member_Address_no,Date_Registered,Videos_Rented) VALUES(2,'Amir','Ahsan',2,2-2-24,4);
INSERT INTO Memebers(Memeber_no,First_Name,Last_Name,Member_Address_no,Date_Registered,Videos_Rented) VALUES(3,'Daniyal','Sheikh',3,11-1-24,3);
INSERT INTO Memebers(Memeber_no,First_Name,Last_Name,Member_Address_no,Date_Registered,Videos_Rented) VALUES(4,'Shahrukh','Khan',4,10-3-24,6);
INSERT INTO Memebers(Memeber_no,First_Name,Last_Name,Member_Address_no,Date_Registered,Videos_Rented) VALUES(5,'Raj','Shamani',5,12-3-24,1);

CREATE TABLE Member_Address(
     Member_Address_no INT NOT NULL PRIMARY KEY,
     city varchar(50),
     state varchar(50),
     Zipcode INT
);

INSERT INTO Member_Address(Member_Address_no,city,state,Zipcode) VALUES (1,'Karachi','Sindh',75540);
INSERT INTO Member_Address(Member_Address_no,city,state,Zipcode) VALUES (2,'Lahore','Punjab',65845);
INSERT INTO Member_Address(Member_Address_no,city,state,Zipcode) VALUES (3,'Islamabad','Punjab',25475);
INSERT INTO Member_Address(Member_Address_no,city,state,Zipcode) VALUES (4,'Peshawar','KPK',72545);
INSERT INTO Member_Address(Member_Address_no,city,state,Zipcode) VALUES (5,'Hyderabad','Sindh',25475);

CREATE TABLE Rented_Video(
     Rental_no INT NOT NULL PRIMARY KEY,
     Member_Name varchar(50),
     Member_no INT,
     Video_no INT,
     Title varchar(50),
     Daily_Rental INT,
     Rental_Date DATE,
     FOREIGN KEY (Member_no) REFERENCES Members(Member_no),
     FOREIGN KEY (Video_no) REFERENCES Videos(Video_no)
);

INSERT INTO Rented_Videos(Rental_no,Member_Name,Member_no,Video_no,Title,Daily_Rental,Rental_Date) VALUES(1,'Ahmed',1,1,'ShutterIsland',1000,12-1-24);
INSERT INTO Rented_Videos(Rental_no,Member_Name,Member_no,Video_no,Title,Daily_Rental,Rental_Date) VALUES(2,'Daniyal',2,2,'Rambo: The Last Blood',2000,11-2-24);
INSERT INTO Rented_Videos(Rental_no,Member_Name,Member_no,Video_no,Title,Daily_Rental,Rental_Date) VALUES(3,'Shahrukh',3,3,'Lost',1500,10-1-24);
INSERT INTO Rented_Videos(Rental_no,Member_Name,Member_no,Video_no,Title,Daily_Rental,Rental_Date) VALUES(4,'Raj',4,4,'War',1500,2-3-24);
INSERT INTO Rented_Videos(Rental_no,Member_Name,Member_no,Video_no,Title,Daily_Rental,Rental_Date) VALUES(5,'Amir',5,5,'Breathe',1000,12-3-24);

/* SELECT Statements */

SELECT * 
FROM Videos
WHERE Title = 'War';

SELECT *
FROM Videos 
WHERE Status = 'Rented';

SELECT Staff_Name 
FROM Staff
WHERE Salary > 50000;

/* Update Statements */

UPDATE Videos
SET Status = 'Available'
WHERE Title = 'War'; 

/* Delete Statements */

DELETE Member_Address_no,city,state,Zipcode
FROM Member_Address
WHERE Member_Address_no = 1;


/* Function Statements */

DELIMITER //

CREATE FUNCTION Total_Movies_Cost()
RETURNS INT
BEGIN
    DECLARE result INT;
    SELECT SUM(Cost) INTO result FROM Videos;
    RETURN result;
END //

DELIMITER ;

