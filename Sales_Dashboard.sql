use sixmonths;

CREATE TABLE sales_dashboard (
    order_id INT,
    order_date DATE,
    customer_name VARCHAR(50),
    region VARCHAR(50),
    product VARCHAR(50),
    category VARCHAR(50),
    sales_amount INT,
    quantity INT
);

INSERT INTO sales_dashboard VALUES
(1,'2024-01-01','Amit','Pune','Laptop','Electronics',50000,1),
(2,'2024-01-02','Neha','Mumbai','Mobile','Electronics',20000,2),
(3,'2024-01-03','Raj','Delhi','Tablet','Electronics',15000,1),
(4,'2024-01-04','Priya','Pune','Chair','Furniture',7000,3),
(5,'2024-01-05','Karan','Mumbai','Desk','Furniture',12000,1),
(6,'2024-01-06','Sneha','Delhi','Laptop','Electronics',55000,1),
(7,'2024-01-07','Amit','Pune','Mobile','Electronics',18000,1),
(8,'2024-01-08','Neha','Mumbai','Chair','Furniture',9000,2),
(9,'2024-01-09','Raj','Delhi','Desk','Furniture',15000,1),
(10,'2024-01-10','Priya','Pune','Laptop','Electronics',60000,1);

select * from sales_dashboard;

-- Total Sales
select sum(sales_amount) as total_sales from sales_dashboard;

-- Best Region
select region,sum(sales_amount) as total_sales from sales_dashboard group by region order by total_sales desc limit 1;

-- Top Product
select product,sum(sales_amount) as total_sales from sales_dashboard group by product order by total_sales desc limit 1;

-- Top Customer
select customer_name,sum(sales_amount) as total_spending from sales_dashboard group by customer_name order by total_spending desc;

-- Monthly Sales Trend
select month(order_date),sum(sales_amount) from sales_dashboard group by month(order_date);

-- Category Contribution 
select category,sum(sales_amount) from sales_dashboard group by category;

select count(order_id) as total_orders from sales_dashboard;