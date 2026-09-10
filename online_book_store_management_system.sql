CREATE DATABASE OnlineBookStore;

USE OnlineBookStore;
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    city VARCHAR(50),
    state VARCHAR(50),
    registration_date DATE
);

INSERT INTO Customers VALUES
(1, 'Anshu Tiwari', 'anshu@gmail.com', 'Mumbai', 'Maharashtra', '2025-01-10'),
(2, 'Rahul Sharma', 'rahul@gmail.com', 'Delhi', 'Delhi', '2025-02-15'),
(3, 'Priya Patel', 'priya@gmail.com', 'Ahmedabad', 'Gujarat', '2025-03-20'),
(4, 'Amit Kumar', 'amit@gmail.com', 'Pune', 'Maharashtra', '2025-04-05'),
(5, 'Sneha Singh', 'sneha@gmail.com', 'Lucknow', 'Uttar Pradesh', '2025-05-12'),
(6, 'Rohan Mehta', 'rohan@gmail.com', 'Bangalore', 'Karnataka', '2025-06-18'),
(7, 'Neha Joshi', 'neha@gmail.com', 'Jaipur', 'Rajasthan', '2025-07-22'),
(8, 'Vikas Verma', 'vikas@gmail.com', 'Kolkata', 'West Bengal', '2025-08-01'),
(9, 'Pooja Shah', 'pooja@gmail.com', 'Surat', 'Gujarat', '2025-08-15'),
(10, 'Karan Gupta', 'karan@gmail.com', 'Chandigarh', 'Punjab', '2025-09-01');

select * from Customers;
CREATE TABLE Authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(100) NOT NULL,
    country VARCHAR(50)
);

CREATE TABLE Categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50) NOT NULL
);

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

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    order_status VARCHAR(30),

    FOREIGN KEY (customer_id)
        REFERENCES Customers(customer_id)
);

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
CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    payment_date DATE,
    payment_method VARCHAR(30),
    payment_status VARCHAR(30),

    FOREIGN KEY (order_id)
        REFERENCES Orders(order_id)
);

