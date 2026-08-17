# Customer Churn & Retention Analytics

## 📌 Project Overview

Customer churn is a major business challenge because losing existing customers can directly impact revenue and long-term growth.

This project analyzes customer churn and retention patterns using **Python, Pandas, NumPy, SQL, Matplotlib, and Seaborn**. The objective is to identify factors associated with customer churn, understand customer behavior, and generate actionable business insights for improving customer retention.

---

## 🎯 Project Objectives

* Analyze overall customer churn patterns
* Identify customer segments with higher churn rates
* Understand the relationship between customer characteristics and churn
* Analyze churn based on factors such as contract, tenure, services, and customer demographics
* Perform SQL-based customer and churn analysis
* Generate visual insights using Python
* Provide business recommendations to improve customer retention

---

## 🛠️ Tools & Technologies

* **Python**
* **Pandas** – Data cleaning and analysis
* **NumPy** – Numerical operations
* **Matplotlib** – Data visualization
* **Seaborn** – Statistical visualization
* **SQL** – Data querying and analysis
* **Jupyter Notebook** – Exploratory data analysis
* **Git & GitHub** – Version control and project management

---

## 📂 Project Structure

```text
Customer-Churn-Retention-Analytics/
│
├── dataset/
│   └── customer_churn.csv
│
├── python/
│   └── churn_analysis.py
│
├── sql/
│   └── churn_analysis.sql
│
├── screenshots/
│   ├── churn_overview.png
│   ├── churn_by_contract.png
│   └── churn_by_tenure.png
│
├── Customer_Churn_Analysis.ipynb
├── Customer_Churn_SQL_Analysis.ipynb
├── README.md
├── requirements.txt
└── .gitignore
```

---

## 🔍 Analysis Performed

### 1. Data Cleaning

The dataset was prepared for analysis by:

* Checking missing values
* Removing or handling duplicate records
* Checking data types
* Cleaning inconsistent values
* Preparing categorical and numerical variables for analysis

### 2. Exploratory Data Analysis

The project explores customer churn across different dimensions, including:

* Churn status
* Customer tenure
* Contract type
* Payment method
* Internet/service type
* Monthly charges
* Total charges
* Customer demographics

### 3. Customer Segmentation

Customers are analyzed across different groups to identify segments that show relatively higher or lower churn behavior.

### 4. SQL Analysis

SQL queries are used to perform customer-level and business-level analysis, including:

* Total customers
* Churned customers
* Churn rate
* Customer segmentation
* Churn by contract type
* Churn by tenure
* Revenue-related analysis
* Identification of high-risk customer groups

### 5. Data Visualization

Python visualizations are created using **Matplotlib and Seaborn** to make churn patterns easier to understand.

---

## 📊 Key Business Questions

The analysis focuses on questions such as:

* What percentage of customers have churned?
* Which customer segments have higher churn?
* Does customer tenure affect churn?
* Which contract types have higher churn?
* Which services are associated with higher churn?
* How does monthly spending relate to churn?
* Which customer groups should businesses prioritize for retention?

---

## 💡 Business Insights

The analysis helps identify customer groups that may have a higher likelihood of churn.

These insights can help businesses:

* Identify high-risk customer segments
* Improve customer retention strategies
* Develop targeted offers and promotions
* Improve customer service for at-risk customers
* Encourage customers toward longer-term contracts
* Focus retention efforts on valuable customer segments

> **Note:** Specific numerical findings are presented in the analysis notebooks and visualizations.

---
## 📊 Project Visualizations

The following visualizations were created using Python, Matplotlib, and Seaborn to analyze customer churn patterns.

### 1. Customer Churn Distribution

![Customer Churn Distribution](screenshots/Customer%20Churn%20Distribution.png)

### 2. Churn by Contract Type

![Churn by Contract Type](screenshots/Churn%20by%20Contract%20Type.png)

### 3. Churn by Internet Service

![Churn by Internet Service](screenshots/Churn%20by%20Internet%20Service.png)

### 4. Churn by Payment Method

![Churn by Payment Method](screenshots/Churn%20by%20Payment%20Method.png)

### 5. Churn by Tenure Group

![Churn by Tenure Group](screenshots/Churn%20by%20Tenure%20Group.png)

### 6. Monthly Charges by Churn Status

![Monthly Charges by Churn Status](screenshots/Monthly%20Charges%20by%20Churn%20Status.png)


---

## 🚀 How to Run the Project

### 1. Clone the repository

```bash
git clone https://github.com/Anshumansahu87/Customer-Churn-Retention-Analytics.git
```

### 2. Navigate to the project folder

```bash
cd Customer-Churn-Retention-Analytics
```

### 3. Install the required libraries

```bash
pip install -r requirements.txt
```

### 4. Run the Jupyter Notebook

```bash
jupyter notebook
```

Then open:

```text
Customer_Churn_Analysis.ipynb
```

For SQL analysis, open:

```text
Customer_Churn_SQL_Analysis.ipynb
```

---

## 📌 Dataset

The project uses a customer churn dataset containing customer information, service details, account information, and churn status.

The dataset is used strictly for educational and analytical purposes.

---

## 📋 Conclusion

This project demonstrates how **Python and SQL** can be used together to analyze customer churn and retention patterns.

The analysis converts raw customer data into meaningful business insights that can support **customer retention, segmentation, and data-driven decision-making**.

---

## 👤 Author

**Anshuman Sahu**

GitHub: [Anshumansahu87](https://github.com/Anshumansahu87)
