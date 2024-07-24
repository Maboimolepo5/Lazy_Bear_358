
-- Create the library database
CREATE DATABASE library;

-- Use the library database
USE library;

-- Create the books table
CREATE TABLE books (
  id INT PRIMARY KEY,
  title VARCHAR(255),
  author VARCHAR(255),
  status VARCHAR(255)
);

-- Create the borrowers table
CREATE TABLE borrowers (
  id INT PRIMARY KEY,
  name VARCHAR(255),
  email VARCHAR(255)
);

-- Create the loans table
CREATE TABLE loans (
  id INT PRIMARY KEY,
  book_id INT,
  borrower_id INT,
  loan_date DATE,
  return_date DATE,
  FOREIGN KEY (book_id) REFERENCES books(id),
  FOREIGN KEY (borrower_id) REFERENCES borrowers(id)
);