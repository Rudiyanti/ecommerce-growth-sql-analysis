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
A table below shows the combined result of the matrix between the number of monthly active users, number of new customers, number of repeat orders, and average frequency of orders.

"year","avg_active_user","new_customers","repeat_order","avg_frequency_order"
2016,109,326,3,1.01
2017,3695,43708,1256,1.03
2018,5338,52062,1167,1.02
Figure 2. Overall Annual Customer Activity Growth Analysis

-----------------
Figure 3. Average Active User vs New Customer
There was a significant increase in the number of new customers in 2017. However, since the available data for 2016 only covers the last four months of the year (September to December), it can be concluded that the growth only occurred in 2017. Additionally, the trend for Monthly Active Users (MAU) also increased every year, reaching 5,338 customers in 2018.

----------------
Figure 4. Repeat order vs Average Frequency Order
There was an increasing trend from 2016 to 2017 for the number of customers making more than one purchase. However, in 2018 there was a slight decrease in the number of customers making repeat purchases.

----------------
Figure 5. Average Frequency Orders
The average number of orders placed by customers did not change much each year, on average customers only placed 1 order.

**Annual Product Category Quality Analysis** <br>
The table below displays the combined results of the matrix between the company's revenue, the number of canceled orders, product categories with the highest total revenue, and product categories with the number of canceled orders each year.

-----------------
Figure 6. Overall Annual Product Category Quality Analysis

---------------
Figure 7. Year total revenue
Overall, there has been an increase in revenue every year

--------------
Figure 8. Total revenue of top products per year
The revenue generated from top products also increased every year. In addition, the category that became the top product was different each year. In 2018, the company generated the highest revenue with the top product category of health and beauty.

--------------
Figure 9. Total revenue of top canceled products per year
The category of products with the highest number of cancellations changes every year. However, in 2018, the most canceled and the best-selling category was health and beauty products. This can happen because the health and beauty category dominates the entire transactions made in 2018.

**Analysis of Annual Payment Type Usage** <br>
This is a table containing information about the number of users for each payment method for each year.

----------------------------------
Figure 10. Overall Analysis of Annual Payment Type Usage

---------------------------
Figure 11. Each payment type per year
• The payment methods most commonly used by customers are credit cards and tend to increase each year.
• Debit cards have shown a significant increase from 2017 to 2018. This may be due to promotions for debit card payments, attracting more customers.
• Payment using vouchers or boleto remained stagnant and tended to decrease in the use of vouchers, which may suggest that the company reduced the use of vouchers.

**Conclusion:** <br>
• In terms of customer growth or Annual Customer Activity Growth, it can be concluded that there was an increase in the number of new customers and Monthly Active Users (MAU) in 2017, indicating significant growth.
• In terms of product quality or Annual Product Category Quality Analysis, there was an increase in the company's total revenue every year. Interestingly, the health & beauty product category was the most popular, but also the category with the highest number of cancellations in 2018.
• The most popular type of payment from year to year is Credit Card.
