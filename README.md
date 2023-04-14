# **Uncovering Business Insights: SQL Analysis of eCommerce Performance**

**Introduction** <br>
In eCommerce business, measuring business performance is important to track, monitor, and assess the success or failure of various business processes. This project aims to analyze the business performance for an eCommerce company by considering several business metrics, such as customer growth, product quality, and payment types.

In this project, data analysis will be conducted using SQL language to examine the business performance from various perspectives. The data used in this project consists of customer data, product data, and transaction data. In addition, the analysis methods used in this project include data exploration, modeling, and visualization to provide a better understanding of the eCommerce company's performance.

The results of this project are expected to provide valuable insights for eCommerce companies in making better business decisions. This repository contains SQL code, data files, and analysis results in the form of a report that can be used as a reference or guide for anyone who wants to analyze the business performance of an eCommerce company.

**Objective** <br>
The objective of this project is to analyze the business performance of an eCommerce company using SQL and generate specific insights, such as identifying customer growth trends, evaluating product quality against standards, and assessing the usability of payment methods for customers.

**Dataset** <br>
This dataset contains information on 100,000 orders placed between 2016 and 2018 across several Brazilian eCommerce platforms. The features include various dimensions of order status, pricing, payment and freight performance, customer location, product attributes, and reviews written by customers.

**Data Preparation** <br>
1. The tool I used is "pgAdmin4".
2. I created 8 tables and new columns using the "CREATE" statement, with data provided in a CSV file. I made sure to match the data types.
3. I imported the CSV data into the database using the "COPY" statement, making sure that the full path to the file_name.csv in local storage is specified.
4. Using the "ALTER TABLE" statement, I created an ERD that specifies the primary and foreign keys.
<p align="center">
    <img width="561" alt="ERD Screenshot" src="https://raw.githubusercontent.com/Rudiyanti/ecommerce-growth-sql-analysis/main/erd.png"><br>
    Figure 1: Entity Relationship Diagram
</p>

**Analysis** <br>
**Annual Customer Activity Growth Analysis** <br>

<p align="center">
    <img width="561" alt="Customers Screenshot" src="https://raw.githubusercontent.com/Rudiyanti/ecommerce-growth-sql-analysis/main/Customers.png"><br>
    Figure 2: Overall Annual Customer Activity Growth Analysis
</p>

A table below shows the combined result of the matrix between the number of monthly active users, number of new customers, number of repeat orders, and average frequency of orders.

<p align="center">
    <img width="561" alt="Customers Screenshot" src="https://raw.githubusercontent.com/Rudiyanti/ecommerce-growth-sql-analysis/main/avg_active_cus.png"><br>
    Figure 3: Average Active User vs New Customer
</p>

There was a significant increase in the number of new customers in 2017. However, since the available data for 2016 only covers the last four months of the year (September to December), it can be concluded that the growth only occurred in 2017. Additionally, the trend for Monthly Active Users (MAU) also increased every year, reaching 5,338 customers in 2018.

<p align="center">
    <img width="561" alt="repeat order" src="https://raw.githubusercontent.com/Rudiyanti/ecommerce-growth-sql-analysis/main/CUSTOM~2.PNG"><br>
    Figure 4. Repeat order vs Average Frequency Order
</p>
    
There was an increasing trend from 2016 to 2017 for the number of customers making more than one purchase. However, in 2018 there was a slight decrease in the number of customers making repeat purchases.

<p align="center">
    <img width="561" alt="Average Frequency Orders" src="https://raw.githubusercontent.com/Rudiyanti/ecommerce-growth-sql-analysis/main/avg_frequency.png"><br>
    Figure 5. Average Frequency Orders
</p>

The average number of orders placed by customers did not change much each year, on average customers only placed 1 order.

**Annual Product Category Quality Analysis** <br>

<p align="center">
    <img width="561" alt="Prdouct Screenshot" src="https://raw.githubusercontent.com/Rudiyanti/ecommerce-growth-sql-analysis/main/Product.png"><br>
Figure 6. Overall Annual Product Category Quality Analysis
</p>

The table below displays the combined results of the matrix between the company's revenue, the number of canceled orders, product categories with the highest total revenue, and product categories with the number of canceled orders each year.

<p align="center">
    <img width="561" alt="year total revenue" src="https://raw.githubusercontent.com/Rudiyanti/ecommerce-growth-sql-analysis/main/total_revenue.png"><br>
Figure 7. Year total revenue
</p>    
    
Overall, there has been an increase in revenue every year

<p align="center">
    <img width="561" alt="top revenue" src="https://raw.githubusercontent.com/Rudiyanti/ecommerce-growth-sql-analysis/main/total_top_revenue.png"><br>
Figure 8. Total revenue of top products per year
</p>    
    
The revenue generated from top products also increased every year. In addition, the category that became the top product was different each year. In 2018, the company generated the highest revenue with the top product category of health and beauty.

<p align="center">
    <img width="561" alt="top canceled" src="https://raw.githubusercontent.com/Rudiyanti/ecommerce-growth-sql-analysis/main/total_canceled.png"><br>
Figure 9. Total revenue of top canceled products per year
</p>

The category of products with the highest number of cancellations changes every year. However, in 2018, the most canceled and the best-selling category was health and beauty products. This can happen because the health and beauty category dominates the entire transactions made in 2018.

**Analysis of Annual Payment Type Usage** <br>

<p align="center">
    <img width="561" alt="payment type" src="https://raw.githubusercontent.com/Rudiyanti/ecommerce-growth-sql-analysis/main/Payment.png"><br>
Figure 10. Overall Analysis of Annual Payment Type Usage
</p>

This is a table containing information about the number of users for each payment method for each year.

<p align="center">
    <img width="561" alt="each payment type" src="https://raw.githubusercontent.com/Rudiyanti/ecommerce-growth-sql-analysis/main/payment_type.png"><br>
Figure 11. Each payment type per year
</p>    
    
• The payment methods most commonly used by customers are credit cards and tend to increase each year. <br>
• Debit cards have shown a significant increase from 2017 to 2018. This may be due to promotions for debit card payments, attracting more customers.<br>
• Payment using vouchers or boleto remained stagnant and tended to decrease in the use of vouchers, which may suggest that the company reduced the use of vouchers.<br>

**Conclusion:** <br>

• In terms of customer growth or Annual Customer Activity Growth, it can be concluded that there was an increase in the number of new customers and Monthly Active Users (MAU) in 2017, indicating significant growth.<br>
• In terms of product quality or Annual Product Category Quality Analysis, there was an increase in the company's total revenue every year. Interestingly, the health & beauty product category was the most popular, but also the category with the highest number of cancellations in 2018.<br>
• The most popular type of payment from year to year is Credit Card.<br>
