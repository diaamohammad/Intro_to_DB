CREATE DATABASE IF NOT EXISTS alx_book_store;
USE alx_book_store;



CREATE TABLE Authors(
    author_id INT PRIMARY KEY AUTO_INCREMANT,
    author_name VARCHAR(215) not null
);

CREATE TABLE Books(
    book_id INT PRIMARY KEY AUTO_INCREMANT,
    title VARCHAR(130) NOT null,
    author_id INT,
    price DOUBLE NOT NULL,
    publication_date DATE,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

CREATE TABLE Customers(
    customer_id INT PRIMARY KEY AUTO_INCREMANT,
    customer_name VARCHAR(215) not null,
    email VARCHAR(215),
    address TEXT 
);

CREATE TABLE Orders(
    order_id INT PRIMARY KEY AUTO_INCREMANT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    order_date DATE
);

CREATE TABLE Order_Details (
    orderdetailid INT PRIMARY KEY AUTO_INCREMANT,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) references Books(book_id),
    quantity DOUBLE
);