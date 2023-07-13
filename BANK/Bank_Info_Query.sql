-- Retrieve all data from table DEPOSIT
select * from Deposit;

-- Retrieve all data from table BORROW
select * from Borrow;

-- Retrieve all data from table CUSTOMERS
select * from Customers;

-- Display Account No, Customer Name & Amount from DEPOSIT
select Actno,Cname,Amount from Deposit;

-- Display Loan No, Amount from BORROW
select Loanno,Amount from Borrow;

-- Display loan details of all customers who belongs to ‘ANDHERI’ branch
select * from Borrow where  Bname='andheri';

-- Give account no and amount of depositor, whose account no is equals to 106
select Actno,Amount from Deposit where Actno=106;

-- Give name of borrowers having amount greater than 5000
select Cname from Borrow where Amount>5000;

-- Give name of customers who opened account after date '1-12-96'
select * from Deposit where Adate > '1-12-96'

-- Display name of customers whose account no is less than 105
select Cname from Deposit where Actno <105;

-- name of customer who belongs to either ‘NAGPUR’ Or ‘DELHI’. (OR & IN)
select Cname from Customers where City ='nagpur' or City ='delhi';

-- Display name of customers with branch whose amount is greater than 4000 and account no is less than 105
select Cname from Deposit where Amount > 4000 and Actno < 105;

-- Find all borrowers whose amount is greater than equals to 3000 & less than equals to 8000 (AND & BETWEEN)
select * from Borrow where Amount between 3000 and 8000;

-- Find all depositors who do not belongs to ‘ANDHERI’ branch
select * from Deposit where	Bname != 'andheri';

-- Display the name of borrowers whose amount is NULL
select * from Borrow where Amount is null;

-- Display Account No, Customer Name & Amount of such customers who belongs to ‘AJNI’, ‘KAROLBAGH’ Or ‘M.G. ROAD’ and Account No is less than 104
select Actno,Cname,Amount from Deposit where ((Bname ='ajni' and Bname = 'karolbag') or Bname='andheri');

-- Display all the details of first five customers
select top 5 * from Customers;

-- Display all the details of first three depositors whose amount is greater than 1000
select top 3 * from Deposit where Amount >1000;

-- Display Loan No, Customer Name of first five borrowers whose branch name does not belongs to 'ANDHERI' 
select top 5 Loanno,Cname from Borrow where Bname != 'andheri';

-- Retrieve all unique cities using DISTINCT.(Use Customers Table)
select distinct City from Customers;

-- Retrieve all unique branches using DISTINCT.(Use Branch Table)
select distinct Bname from Branch;

-- Retrieve all the records of customer table as per their city name in ascending order
select * from Customers order by City;

-- Retrieve all the records of deposit table as per their amount column in descending order
select * from Deposit order by Amount desc;

-- Retrieve all the details of customers in which decending order of their city name
select * from Customers order by City desc;

-- Show all unique borrowers & label the column UNI_Borrowers. (Display only Names)
select distinct Cname as UNI_Borrowers from Borrow;