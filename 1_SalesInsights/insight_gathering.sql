SELECT * FROM sales.transactions;
SELECT * FROM sales.customers;
SELECT * FROM sales.products;
SELECT * FROM sales.markets;
SELECT * FROM sales.date;


SELECT count(*) FROM sales.transactions;   -- total transaction = 150283
SELECT count(*) FROM sales.customers;      -- total customers = 38
SELECT count(*) FROM sales.products;       -- total products = 279
SELECT count(*) FROM sales.markets;        -- total markets = 17

-- Market code for Chennai is Mark001 --

select * from sales.transactions;
select * from sales.transactions where market_code = "Mark001";

select count(*) from sales.transactions where market_code = "Mark001";   -- total transaction made in Chennai = 1035

-- In curreny column we have USD in some rows --

select * from sales.transactions where currency = "USD";    -- luckly only two row having USD in currency

-- check for any negative sales_amount --

select * from sales.transactions where (sales_amount < 0);    -- Two rows both belong to market_code Mark002 having sales_amount negative

select * from sales.transactions where (sales_amount = 0);

select count(*) from sales.transactions where (sales_amount = 0);   -- total count of rows with zero value = 1609

select sales.transactions.*, sales.date.* from sales.transactions inner join sales.date on sales.transactions.order_date = sales.date.date;

select
*
from sales.transactions tran inner join sales.date d 
on tran.order_date = d.date;

select sales.transactions.*, sales.date.* from sales.transactions inner join sales.date 
on sales.transactions.order_date = sales.date.date 
where sales.date.year = 2020;

select sum(sales.transactions.sales_amount) from sales.transactions inner join sales.date 
on sales.transactions.order_date = sales.date.date 
where sales.date.year = 2019;    -- Total Revenue in 2019 = 336452114 

select sum(sales.transactions.sales_amount) from sales.transactions inner join sales.date 
on sales.transactions.order_date = sales.date.date 
where sales.date.year = 2020;   -- Total Revenue in 2020 = 142235559

select sum(sales.transactions.sales_amount) from sales.transactions inner join sales.date 
on sales.transactions.order_date = sales.date.date 
where sales.date.year = 2020 and sales.transactions.market_code = "Mark001";   -- Total Revenue in chennai in 2020 = 2463024

-- distinct product sold in Chennai --

Select distinct(product_code) from sales.transactions where market_code = "Mark001";

Select count(distinct(product_code)) from sales.transactions where market_code = "Mark001";  -- Total distinct product in Chennai = 77 

select * from sales.customers;

select * from sales.customers where customer_type = "Brick & Mortar";

select count(*) from sales.customers where customer_type = "Brick & Mortar";      -- Total 19 customers we have from Brick & Mortar

select * from sales.date;

select * from sales.date where year = 2017 and month_name = "July";









