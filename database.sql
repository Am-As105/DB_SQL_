
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(80) ,
    email VARCHAR(100),
    phone VARCHAR(20),
    registration_date DATE 
);

CREATE TABLE Advisors(
    advisor_id INT AUTO_INCREMENT PRIMARY KEY,
    full_name VARCHAR(100),
    email VARCHAR(100)
);

CREATE TABLE Accounts (
    account_id INT AUTO_INCREMENT PRIMARY KEY,
    account_number INT , 
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
    transaction_type ENUM('debit','credit'),
    transaction_date DATE,
    accountid INT,
    FOREIGN KEY (accountid) REFERENCES Accounts(account_id)
);

INSERT INTO Customers  (full_name , email, phone , registration_date)
VALUES
('amine elarar', 'amine@', '0612013501','2025-12-09'),
('Sara b', 'sara@', '06234567', '2025-12-09'),
('AZIZ elarar', 'AZIZ@', '0634567998' ,'2025-12-09');


INSERT INTO Advisors  (full_name, email)
VALUES
('amine elarar', 'amine@'),
('Sara b', 'sara@'),
('AZIZ elarar', 'AZIZ@');

INSERT INTO Accounts  (account_number ,balance ,account_type, customerid ,advisorid)
VALUES 
( 20 , 2000.00, 'Checking',1 , 1),
( 21 , 2032.00, 'Checking',2 , 2),
( 22 , 2044.00, 'Business',3 , 3),
( 23 , 2090.00, 'Savings',1 , 1),
( 25 , 2032.00, 'Checking',2 , 2),
( 26 , 2054.00, 'Savings',3, 3);


INSERT INTO  transactions  ( amount ,transaction_type , transaction_date ,accountid)
VALUES 
(200.00, 'debit' , '2025-12-09', 1),
(300.00, 'credit','2025-12-09', 2),
(500.00, 'credit','2025-12-09', 3),
(700.00, 'debit','2025-12-09', 4);



