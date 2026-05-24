# 📊 Tokopaedi SQL Business Analysis

SQL business analysis project on Tokopaedi e-commerce dataset covering sales, customers, products, and marketing funnel insights.

---

## 📖 Overview

This project analyzes Tokopaedi e-commerce business performance using SQL based on transaction, customer, product, payment, and marketing funnel datasets.

The analysis focuses on identifying sales trends, customer behavior, product category performance, and channel effectiveness to support data-driven business decisions.

This project was completed as part of the **Final Project – Data Analyst Bootcamp (MySkill Batch 27).**

---

## 🎯 Business Objectives

This analysis focuses on 5 business use cases:

### 1️⃣ Monthly Revenue Analysis (Board of Directors)

Analyze total monthly revenue in 2024 to identify seasonal trends and revenue patterns.

### 2️⃣ Product Category Performance (Warehouse Manager)

Analyze quantity sold by category from 2020–2024 to support inventory planning and restock strategy.

### 3️⃣ Channel Performance Comparison (Marketing Manager)

Compare revenue and order growth between 2023 and 2024 by sales channel.

### 4️⃣ Organic Funnel Conversion Analysis

Measure event-to-order conversion rate to evaluate marketing channel effectiveness.

### 5️⃣ Customer Activation Analysis (BI & CRM Lead)

Measure customer acquisition and average time from registration to first purchase.

---

## 🗂️ Dataset

The project uses 6 related datasets:

| Table | Description |
|---|---|
| `order_detail` | Order transaction detail |
| `transaction_detail` | Transaction payment summary |
| `product_detail` | Product catalog |
| `customer_detail` | Customer profile |
| `payment_detail` | Payment methods |
| `funnel_detail` | Marketing funnel activity |

📦 For repository optimization, datasets are stored in:

`dataset.zip`

---

## 🗄️ Database Schema

The datasets are connected through relational keys:

- `customer_id`
- `transaction_id`
- `order_id`
- `sku_id`

These relationships enable end-to-end analysis between:

✅ Customers  
✅ Orders  
✅ Products  
✅ Payments  
✅ Marketing funnel activities  

---

## 🧹 Data Preparation

Before analysis, the data was prepared by:

✅ Checking duplicate values on each table

✅ Checking null values

✅ Validating relationships between tables

✅ Converting raw files into CSV format

### Findings

✔️ No duplicate values found

✔️ Most tables contain complete data

⚠️ `funnel_detail.order_id` contains null values but was kept because it does not affect the analysis

---

## 🛠️ Tools Used

- SQL (Google BigQuery)
- CSV Dataset
- Data Cleaning
- Exploratory Data Analysis
- Business Analysis
- Google Slides / PDF Presentation

---

## 📁 Project Structure

```bash
tokopaedi-sql-business-analysis/
├── README.md
├── Final Project DA27 - C6 - SQL Task.pdf
├── dataset.zip
│
├── sql/
│   ├── finpro-1.sql
│   ├── finpro-2.sql
│   ├── finpro-3.sql
│   ├── finpro-4.sql
│   └── finpro-5.sql
│
└── assets/
```

---

## 💻 SQL Analysis Files

The SQL queries are organized into 5 business case studies:

| File | Analysis |
|---|---|
| `finpro-1.sql` | Monthly revenue analysis (2024) |
| `finpro-2.sql` | Product category performance |
| `finpro-3.sql` | Channel growth comparison (2023 vs 2024) |
| `finpro-4.sql` | Organic funnel conversion analysis |
| `finpro-5.sql` | Customer activation analysis |

---

## 🔍 Key Insights

### 📈 Revenue Trend

- Sales showed a clear seasonal pattern
- Q4 generated the highest revenue
- Mid-year experienced a decline

### 🛍️ Product Category Shift

Customer demand shifted toward lifestyle categories:

- Fashion & Footwear
- Beauty & Personal Care

while some categories remained stable or lower-performing.

### 🌐 Channel Performance

- Offline Store showed the strongest growth
- Website generated the highest traffic
- Mobile App gained more users but converted slower

### 🎯 Funnel Conversion

- Play Store and App Store showed the highest conversion rates
- Website still has strong optimization opportunities

### 👥 Customer Activation

- Website users converted faster
- Mobile App users needed longer time to complete first purchase

---

## 💡 Recommendations

### 🚀 Optimize High-Growth Categories

Focus inventory and promotion on:

- Fashion & Footwear
- Beauty & Personal Care

### 🌐 Improve Website Conversion

Increase conversion through:

- UX/UI improvements
- Funnel optimization
- Retargeting strategy

### 📦 Prepare for Peak Season

Maximize Q4 through:

- Stock planning
- Promotions
- Operational readiness

### 👤 Improve Customer Activation

Accelerate first purchase with:

- Better onboarding
- Email reminders
- Promotional campaigns

---

## 📚 Learning Outcomes

Through this project I improved my ability to:

📊 Analyze business problems using SQL

🗂️ Work with relational datasets

🔗 Perform JOIN and CTE queries

📈 Generate business insights from SQL output

💡 Translate findings into recommendations

📝 Present analytical findings clearly for stakeholders

---

## 👤 Author

**Kenneth Christian Nathanael**

Data Analyst | SQL | Dashboard | AI & Automation

GitHub: https://github.com/kenchristn
