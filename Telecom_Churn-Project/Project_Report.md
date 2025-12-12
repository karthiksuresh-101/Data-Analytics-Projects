# Telecom_Customer_Churn_Analysis:
## Project Overview
This project is an end-to-end churn analysis built using **Python**, **SQL**, and **Tableau .** 

The goal is to identify key churn drivers, quantify revenue loss, and highlight customer segments needing targeted retention strategies.
This portfolio project demonstrates:
- Real-world data cleaning & preprocessing
- Exploratory data analysis (EDA) using Python
- Business understanding & stakeholder communication
- Interactive dashboard design optimized for decision-making
- Ability to convert a common dataset into a recruiter-ready, problem-solving case study

Unlike a typical analytics project that only focuses on cleaning  data and making pretty dashboards, I wanted this project to be an real experience beacuase of which I designed this to simulate a real data analyst working with business stakeholders.

To achieve this, I asked AI to generate business questions is relevant to the dataset I provided, and asked it to provide questions similar to what a Product Manager or Retention Lead would ask(since I am working on a churn dataset). The below questions paved way for my entire workflow of this project, helping me:

- Focus on collecting insights that actually matter to the business
- Identify where the company needed my help as a analyst
- Build dashboards that answer stakeholder questions and help them make data driven decision making
- Follow a real-world decision-making and communication process

This turns the project from a simple churn analysis into **a stakeholder-focused churn insights solution**, aligned with real-world decision-making and business needs.

## Business Objective & Problem Statement

Customer churn poses a significant financial risk in the telecom industry due to recurring revenue models and high customer acquisition costs. The primary business objective of this project is to identify key churn drivers, understand which customer segments contribute most to churn, and support data-driven retention strategies.

From a stakeholder perspective, the problem centers around:
- High churn rates impacting monthly revenue
- Limited visibility into which customers are most at risk
- Unclear relationship between contracts, services, payments, and churn
- Lack of prioritization for high-value customer retention

This project addresses these challenges using structured data analysis and business-focused interpretation.

## Dataset Overview

The project uses the Telco Customer Churn dataset from Kaggle, which contains over 7,000 customer records. The dataset includes customer demographics, service subscriptions, account details, billing information, and churn status.

Key fields include:
customerID, tenure, Contract, PaymentMethod, MonthlyCharges, TotalCharges, InternetService, and Churn.

Before analysis, the dataset required:
- Handling missing and inconsistent values
- Converting TotalCharges to numeric format
- Creating derived features such as tenure_group
- Estimating churn-related revenue impact using monthly charges

## Analytical Approach

The analysis followed a structured workflow:

1. Data Cleaning & Preparation
  Raw data was inspected, cleaned, and standardized. Missing values were handled, numeric fields were corrected, and new features   were derived to support lifecycle and revenue analysis.
2. Exploratory Data Analysis (EDA)
  Churn patterns were explored across multiple dimensions including tenure, contract type, payment method, service type, and   monthly charges. Comparative analysis was used to highlight high-risk combinations.
3. Segmentation & KPI Calculation
  Customers were segmented based on tenure, contract, and payment behavior. Key metrics such as churn rate and estimated monthly   revenue loss were calculated to quantify business impact.
4. Dashboard Preparation
  The processed data was structured for visualization, enabling interactive dashboard exploration by stakeholders.

## Tools used in this project

### **Python (pandas, numpy, seaborn, matplotlib)**
To clean raw data, handle missing values, engineer features, and explore patterns visually.

### **SQL (MySQL)**
To compute churn rate, revenue impact, segmentation, and behavioural patterns using analytical queries.

### **Tableau**
To design a dashboard that directly answers each business question.

## Codes
Python analysis:
[Jupyter Notebook](Teleco_Notebook.ipynb)

SQL analysis:
[MySql](xyz)


## Tableau
# Telecom Churn Analysis Dashboard
Viz link: [``link``](https://public.tableau.com/views/Telecom_Churn_Dashboard_17648657101240/Dashboard3?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

## For Detailed Analysis Visit My Portfolio
Portfolio : [``link``]()

## Repository Purpose & Usage

This repository is intended to provide transparent access to the code and analytical workflow used in the Telecom Customer Churn project. It is designed for reviewers, recruiters, and collaborators who want to explore the data preparation, analysis logic, and reproducibility of the work. Detailed storytelling, dashboard explanations, and business context are presented separately in the author’s Notion portfolio, while this repository focuses on technical clarity and code accessibility. Together, they represent an end-to-end analytics case study that demonstrates both analytical rigor and business-oriented thinking.



