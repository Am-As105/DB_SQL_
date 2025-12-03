
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(80) ,
    email VARCHAR(100),
    phone VARCHAR(20),
    registration_date DATE 
);



CREATE TABLE Advisors(
    advisor_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100) ,
    email VARCHAR(100)
);

CREATE TABLE Accounts (
    account_id INT AUTO_INCREMENT PRIMARY KEY,
    account_number VARCHAR(50) UNIQUE ,
    balance DECIMAL(10,2) ,
    account_type ENUM('Checking','Savings','Business') ,
    customerid INT,
    advisorid INT,
    FOREIGN KEY (customerid) REFERENCES Customers(customer_id),
    FOREIGN KEY (advisorid) REFERENCES Advisors(advisor_id)
);
CREATE TABLE Transactions (
    transaction_id INT AUTO_INCREMENT PRIMARY KEY,
    amount DECIMAL(10,2),
    transaction_type ENUM('debit', 'credit') ,
    transaction_date DATE,
    accountid INT,
    FOREIGN KEY (accountid) REFERENCES Accounts(account_id)
);


INSERT INTO Customers 
VALUES
('amine elarar', 'amine@', '0612013501'),
('Sara b', 'sara@', '06234567'),
('AZIZ elarar', 'AZIZ@', '0634567998');


