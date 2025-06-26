# 🍕 Pizza Sales Analysis – SQL & Power BI Project

## 📊 Project Overview

This end-to-end sales analytics project explores the performance of a fictional pizza restaurant. Using **SQL Server** for KPI and chart-level calculations and **Power BI** for data cleaning, modeling, and interactive visualization, the goal was to derive actionable insights from order-level sales data.

The project was inspired by a YouTube tutorial and enhanced with **custom queries, new visualizations, and layout personalization** to showcase self-taught analytical skills and dashboard design.


---


## 🧱 Data Structure Overview

The dataset contains a single transactional table: `pizza_sales`, capturing detailed sales and order-level data for a fictional pizza business. Below are the key fields included:

| Column Name         | Description                                                                 |
|---------------------|-----------------------------------------------------------------------------|
| `pizza_id`          | Unique identifier for each pizza item sold                                 |
| `order_id`          | Unique transaction/order number                                             |
| `pizza_name_id`     | Internal SKU or system ID for each pizza variant                           |
| `pizza_name`        | Full name of the pizza (e.g., "Thai Chicken", "Veggie Supreme")            |
| `pizza_ingredients` | List of ingredients used in the pizza                                      |
| `pizza_category`    | Category classification (e.g., Classic, Chicken, Veggie)                   |
| `pizza_size`        | Size of the pizza (S, M, L, XL)                                             |
| `unit_price`        | Price per unit of the pizza                                                 |
| `quantity`          | Number of pizzas ordered per line item                                     |
| `total_price`       | Total cost per order line (calculated as `unit_price × quantity`)          |
| `order_date`        | Date the order was placed                                                   |
| `order_time`        | Time the order was placed                                                   |

This table was used as the source for all SQL-based analysis and Power BI dashboard visualizations.

---

## 🛠 Tools Used

| Tool         | Purpose                                 |
|--------------|------------------------------------------|
| **SQL Server** | KPI and trend calculations |
| **Power BI**   | Data cleaning, modeling, and dashboard |
| **Excel**      | Initial data review and cross-validation of key metrics |

---

## 🚀 Executive Summary

- **Total Revenue**: $817,860.05  
- **Total Orders**: 21,350  
- **Total Pizzas Sold**: 49,574  
- **Average Order Value**: $38.31  
- **Average Pizzas per Order**: 2  
- **Most Popular Size**: Large  
- **Top Performing Day**: Friday  
- **Highest Grossing Pizza**: Thai Chicken  
- **Most Ordered Pizza**: Classical Deluxe  
- **Month with Highest Orders**: July  

---

## 🔍 Insights Deep Dive

- 🗓️ **Day-Level Trends**: Fridays had the highest number of orders, showing strong pre-weekend demand. 
- 🕒 **Time Trends**: Orders peaked between 12 PM and 2 PM, indicating strong lunch-time traffic.
- 📦 **Size Preferences**: Large-sized pizzas were the most ordered across all metrics.
- 🧾 **Revenue vs Quantity**:
  - **Thai Chicken** led in total revenue.
  - **Classical Deluxe** was the most ordered by quantity.
- ❌ **Worst Performer**: Brie Carre was the lowest performer in terms of revenue, quantity sold, and total orders.
- 📈 **Seasonal Peaks**: July and Q3 showed the highest order volumes, possibly due to promotions or summer demand.

---

## ✅ Recommendations

- 💼 **Staffing Optimization**: Increase staff during Friday lunch hours to handle high traffic efficiently.
- 🎯 **Midweek Promotions**: Offer special deals on Tuesdays to improve low order volumes.
- 📦 **Upsell Popular Sizes**: Promote large-sized pizza bundles for better customer value and higher revenue.
- 🛑 **Menu Refinement**: Consider retiring or revamping low-performing items like Brie Carre.
- 📅 **Seasonal Strategy**: Leverage high-performing months like July for promotional campaigns.

---

## 📸 Dashboard Preview

![Dashboard Screenshot](./Images/dashboard_screenshot.png)

> *(Make sure you upload a screenshot of your Power BI dashboard to the `Images/` folder and name it `dashboard_screenshot.png`)*

---

## 📁 Project Structure

pizza-sales-analysis/
│
├── README.md
├── SQL/
│ ├── KPI_Calculations.sql
│ └── Chart_Calculations.sql
├── PowerBI/
│ └── Pizza_Sales_Dashboard.pbix
├── Images/
│ └── dashboard_screenshot.png
├── Insights/
│ └── insights_summary.txt


---

## 👤 About Me

I'm **Manveer Kaur**, a self-taught aspiring Data Analyst with a strong foundation in Excel, SQL Server, and Power BI. I transitioned into analytics after several years in customer service and supervisory roles and have built this project entirely through self-guided learning.

📫 Email: manveerk15@gmail.com  
🔗 LinkedIn: [ManveerKaur](www.linkedin.com/in/manveer-kaur-1a7399176)

---

