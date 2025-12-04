insert into Customers values (6, 'khadija','kh@gmail.com','0612013501','2007-09-28')

update Customers set phone ='0612013501' where full_name ='Amine elarar'

select * from Customers 

select full_name , email from Customers 

select * from accounts

select account_number from accounts

select *from Transactions 


select * from accounts where balance > 10000

select * from accounts where balance <= 0

select * from Transactions where transaction_type = 'debit'

select * from Transactions where transaction_type = 'credit'

-- select * from Transactions where accountId = 1

-- select distinct * from Customers c join accounts a on c.customer_id = a.customerId where a.advisorId = 2

-- select * from accounts where account_type = 'Savings'

-- select * from Transactions where amount >= 500

-- select * from Transactions where amount >= 100 and amount <= 1000

-- select distinct * from accounts where customerId = 1

-- select * from accounts order by balance asc

-- select * from Transactions order by amount desc


-- select * from Transactions order by amount desc limit 5


-- select * from Transactions order by transaction_date desc


-- select * from Transactions order by transaction_date desc limit 3


-- select a.account_id , c.full_name ,ad.full_name from accounts a join Customers c on a.customerId = c.customer_id join advisors ad on a.advisorId = ad.advisor_id