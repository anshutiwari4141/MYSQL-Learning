CREATE DATABASE Online_Book_Store_Management_System;

USE Online_Book_Store_Management_System;
show databases;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    city VARCHAR(50),
    state VARCHAR(50),
    registration_date DATE
);

INSERT INTO Customers VALUES
(1,'Anshu Tiwari','anshu@gmail.com','Mumbai','Maharashtra','2025-01-10'),
(2,'Rahul Sharma','rahul@gmail.com','Delhi','Delhi','2025-01-15'),
(3,'Priya Patel','priya@gmail.com','Ahmedabad','Gujarat','2025-01-20'),
(4,'Amit Kumar','amit@gmail.com','Pune','Maharashtra','2025-02-01'),
(5,'Sneha Singh','sneha@gmail.com','Lucknow','Uttar Pradesh','2025-02-10'),
(6,'Rohan Mehta','rohan@gmail.com','Bangalore','Karnataka','2025-02-15'),
(7,'Neha Joshi','neha@gmail.com','Jaipur','Rajasthan','2025-02-20'),
(8,'Vikas Verma','vikas@gmail.com','Kolkata','West Bengal','2025-03-01'),
(9,'Pooja Shah','pooja@gmail.com','Surat','Gujarat','2025-03-05'),
(10,'Karan Gupta','karan@gmail.com','Chandigarh','Punjab','2025-03-10'),
(11,'Ritika Jain','ritika@gmail.com','Indore','Madhya Pradesh','2025-03-15'),
(12,'Mohit Yadav','mohit@gmail.com','Noida','Uttar Pradesh','2025-03-20'),
(13,'Anjali Sharma','anjali@gmail.com','Nagpur','Maharashtra','2025-03-25'),
(14,'Saurabh Singh','saurabh@gmail.com','Patna','Bihar','2025-04-01'),
(15,'Nikita Roy','nikita@gmail.com','Bhopal','Madhya Pradesh','2025-04-05'),
(16,'Harsh Patel','harsh@gmail.com','Vadodara','Gujarat','2025-04-10'),
(17,'Manish Kumar','manish@gmail.com','Kanpur','Uttar Pradesh','2025-04-15'),
(18,'Komal Gupta','komal@gmail.com','Agra','Uttar Pradesh','2025-04-20'),
(19,'Deepak Sharma','deepak@gmail.com','Nashik','Maharashtra','2025-04-25'),
(20,'Sakshi Jain','sakshi@gmail.com','Udaipur','Rajasthan','2025-05-01'),
(21,'Abhishek Verma','abhishek@gmail.com','Ranchi','Jharkhand','2025-05-05'),
(22,'Meera Nair','meera@gmail.com','Kochi','Kerala','2025-05-10'),
(23,'Ajay Mishra','ajay@gmail.com','Varanasi','Uttar Pradesh','2025-05-15'),
(24,'Shreya Das','shreya@gmail.com','Bhubaneswar','Odisha','2025-05-20'),
(25,'Vivek Arora','vivek@gmail.com','Ludhiana','Punjab','2025-05-25');
 
show create table Customers;
desc Customers;
select * from Customers;

CREATE TABLE Authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(100) NOT NULL,
    country VARCHAR(50)
);
INSERT INTO Authors VALUES
(1,'Robert C. Martin','USA'),
(2,'James Clear','USA'),
(3,'George Orwell','UK'),
(4,'J.K. Rowling','UK'),
(5,'Yuval Noah Harari','Israel'),
(6,'Paulo Coelho','Brazil'),
(7,'Stephen Hawking','UK'),
(8,'Chetan Bhagat','India'),
(9,'Dan Brown','USA'),
(10,'Robin Sharma','Canada'),
(11,'Napoleon Hill','USA'),
(12,'Simon Sinek','UK'),
(13,'Walter Isaacson','USA'),
(14,'R.K. Narayan','India'),
(15,'Ruskin Bond','India'),
(16,'Sudha Murthy','India'),
(17,'Arundhati Roy','India'),
(18,'Amish Tripathi','India'),
(19,'Jeff Kinney','USA'),
(20,'Dale Carnegie','USA'),
(21,'Eric Ries','USA'),
(22,'Mark Manson','USA'),
(23,'Ashlee Vance','USA'),
(24,'Deepak Chopra','India'),
(25,'Shashi Tharoor','India');

select * from Authors;

desc Authors;
 CREATE TABLE Categories (
    category_id INT PRIMARY KEY,
  category_name VARCHAR(50) NOT NULL
);
INSERT INTO Categories VALUES
(1,'Programming'),
(2,'Self Help'),
(3,'Fiction'),
(4,'Fantasy'),
(5,'History'),
(6,'Science'),
(7,'Indian Literature'),
(8,'Technology'),
(9,'Business'),
(10,'Biography');

Select * From Categories;
     
desc Categories;

CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    author_id INT,
    category_id INT,
    price DECIMAL(10,2),
    stock INT,
    publication_year INT,

    FOREIGN KEY (author_id)
        REFERENCES Authors(author_id),

    FOREIGN KEY (category_id)
        REFERENCES Categories(category_id)
);

INSERT INTO Books VALUES
(1,'Clean Code',1,1,550,20,2008),
(2,'Atomic Habits',2,2,450,35,2018),
(3,'1984',3,3,350,25,1949),
(4,'Harry Potter',4,4,600,15,1997),
(5,'Sapiens',5,5,700,18,2011),
(6,'The Alchemist',6,3,400,30,1988),
(7,'A Brief History of Time',7,6,650,12,1988),
(8,'Five Point Someone',8,7,300,40,2004),
(9,'Half Girlfriend',8,7,320,22,2014),
(10,'Data Structures Using C',1,1,500,10,2015),
(11,'The Da Vinci Code',9,3,450,28,2003),
(12,'The Monk Who Sold His Ferrari',10,2,380,24,1997),
(13,'Think and Grow Rich',11,9,550,20,1937),
(14,'Start With Why',12,9,600,18,2009),
(15,'Steve Jobs',13,10,750,14,2011),
(16,'Malgudi Days',14,7,350,30,1943),
(17,'The Blue Umbrella',15,7,280,35,1980),
(18,'Wise and Otherwise',16,7,320,26,2002),
(19,'The God of Small Things',17,3,450,19,1997),
(20,'The Immortals of Meluha',18,4,520,20,2010),
(21,'Diary of a Wimpy Kid',19,3,340,33,2007),
(22,'How to Win Friends',20,2,430,29,1936),
(23,'The Lean Startup',21,9,650,15,2011),
(24,'The Subtle Art of Not Giving a F*ck',22,2,550,17,2016),
(25,'Elon Musk',23,10,800,10,2015),
(26,'The Seven Spiritual Laws',24,2,390,21,1994),
(27,'Why I Am a Hindu',25,10,620,13,2018),
(28,'Python Programming',1,8,750,16,2021),
(29,'Machine Learning Basics',1,8,900,12,2022),
(30,'Cyber Security Fundamentals',1,8,850,14,2023);
desc Books;
Select * From Books;
SELECT * FROM Books
LIMIT 25;

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    order_status VARCHAR(30),

    FOREIGN KEY (customer_id)
        REFERENCES Customers(customer_id)
);
INSERT INTO Orders VALUES
(101,1,'2026-01-01',850,'Delivered'),
(102,2,'2026-01-02',1200,'Delivered'),
(103,3,'2026-01-03',650,'Shipped'),
(104,4,'2026-01-04',1500,'Delivered'),
(105,5,'2026-01-05',900,'Pending'),
(106,6,'2026-01-06',1800,'Delivered'),
(107,7,'2026-01-07',750,'Cancelled'),
(108,8,'2026-01-08',1100,'Delivered'),
(109,9,'2026-01-09',950,'Shipped'),
(110,10,'2026-01-10',1300,'Delivered'),
(111,11,'2026-01-11',700,'Delivered'),
(112,12,'2026-01-12',1450,'Delivered'),
(113,13,'2026-01-13',820,'Pending'),
(114,14,'2026-01-14',1700,'Delivered'),
(115,15,'2026-01-15',990,'Shipped'),
(116,16,'2026-01-16',1250,'Delivered'),
(117,17,'2026-01-17',880,'Delivered'),
(118,18,'2026-01-18',2100,'Delivered'),
(119,19,'2026-01-19',760,'Cancelled'),
(120,20,'2026-01-20',1550,'Delivered'),
(121,21,'2026-01-21',920,'Pending'),
(122,22,'2026-01-22',1180,'Delivered'),
(123,23,'2026-01-23',1350,'Shipped'),
(124,24,'2026-01-24',980,'Delivered'),
(125,25,'2026-01-25',1650,'Delivered') ;

select * from Orders;

desc Orders;

CREATE TABLE Order_Details (
    order_detail_id INT PRIMARY KEY,
    order_id INT,
    book_id INT,
    quantity INT,
    price DECIMAL(10,2),

    FOREIGN KEY (order_id)
        REFERENCES Orders(order_id),

    FOREIGN KEY (book_id)
        REFERENCES Books(book_id)
);

INSERT INTO Order_Details VALUES
(1,101,1,2,425),
(2,102,2,3,400),
(3,103,3,1,650),
(4,104,4,3,500),
(5,105,5,2,450),
(6,106,6,4,450),
(7,107,7,2,375),
(8,108,8,2,550),
(9,109,9,1,950),
(10,110,10,2,650),
(11,111,11,2,350),
(12,112,12,5,290),
(13,113,13,2,410),
(14,114,14,4,425),
(15,115,15,3,330),
(16,116,16,2,625),
(17,117,17,2,440),
(18,118,18,5,420),
(19,119,19,2,380),
(20,120,20,5,310),
(21,121,21,2,460),
(22,122,22,2,590),
(23,123,23,3,450),
(24,124,24,2,490),
(25,125,25,3,550);
desc Order_Details;
select * from Order_Details;

CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    payment_date DATE,
    payment_method VARCHAR(30),
    payment_status VARCHAR(30),

    FOREIGN KEY (order_id)
        REFERENCES Orders(order_id)
);

INSERT INTO Payments VALUES
(201,101,'2026-01-01','UPI','Paid'),
(202,102,'2026-01-02','Credit Card','Paid'),
(203,103,'2026-01-03','Debit Card','Paid'),
(204,104,'2026-01-04','Net Banking','Paid'),
(205,105,'2026-01-05','UPI','Pending'),
(206,106,'2026-01-06','Credit Card','Paid'),
(207,107,'2026-01-07','Cash On Delivery','Refunded'),
(208,108,'2026-01-08','UPI','Paid'),
(209,109,'2026-01-09','Debit Card','Paid'),
(210,110,'2026-01-10','Net Banking','Paid'),
(211,111,'2026-01-11','UPI','Paid'),
(212,112,'2026-01-12','Credit Card','Paid'),
(213,113,'2026-01-13','UPI','Pending'),
(214,114,'2026-01-14','Debit Card','Paid'),
(215,115,'2026-01-15','Net Banking','Paid'),
(216,116,'2026-01-16','UPI','Paid'),
(217,117,'2026-01-17','Credit Card','Paid'),
(218,118,'2026-01-18','Net Banking','Paid'),
(219,119,'2026-01-19','Cash On Delivery','Refunded'),
(220,120,'2026-01-20','UPI','Paid'),
(221,121,'2026-01-21','Pending','Pending'),
(222,122,'2026-01-22','Credit Card','Paid'),
(223,123,'2026-01-23','Debit Card','Paid'),
(224,124,'2026-01-24','UPI','Paid'),
(225,125,'2026-01-25','Net Banking','Paid');

Select * From Payments;
delete from Payments;
desc Payments;





