# Telecom_Customer_Churn_Analysis:


## Project Description
This project is an end-to-end churn analysis built using Python, SQL, and Tableau to explore customer behavior and identify churn drivers in a telecom dataset (Kaggle: Telco Customer Churn).

Unlike a typical churn project, this analysis was intentionally designed to simulate a real business environment. I asked AI to generate realistic stakeholder questions, similar to what a retention manager or product owner would ask. These questions guided the entire workflow—from EDA to SQL segmentation to dashboard design.

The result is a stakeholder-driven churn insights dashboard, highlighting churn risk, service adoption patterns, payment friction, high-value customer loss, and tenure-based churn behavior.


## Dataset

Source: Kaggle - Teleco Customer Churn

Get the dataset from: [raw_data](Data_raw.csv)

Key field used: ``customerID, gender, SeniorCitizen, Partner, Dependents, tenure, Contract, PaymentMethod, MonthlyCharges, TotalCharges, InternetService, Churn``

Notes:
- Handled missing values and type conversions .
- Created derived columns: `tenure_group`, `monthly_revenue_lost`


## Tools And Libraries
- Dashboard: Tableau 
- Data cleaning & analysis: Python (pandas), SQL(MySQL)
- Visuals & charts: Matplotlib,Seaborn and Tableau visuals
- Notebook: Jupyter Notebook 
- Version control & hosting: GitHub


## How To Run 
1. **Clone the repo**   
```
git clone https://github.com/<your-username>/<repo-name>.git 
cd <repo-name> 
```
2. **Install dependencies**
This project uses common Python analytics libraries:
```
pip install pandas numpy matplotlib seaborn
```

3. **Run the Script or Explore Analysis :**
   
``Run this inside your notebook``: [Telecom_Churn_Notebook.py](Telecom_Churn_Notebook.py)

``Explore Analysis here``: [Notebook Preview](Teleco_Notebook.ipynb) 


## In-Depth Project Details

A complete and in-depth explanation of this project is available in [Project_report.md](Project_report.md), where the full narrative of the analysis is presented.

This document includes the project overview, the stakeholder problem that motivated the work, the data preparation steps, the analytical approach, key insights, solutions generated from the findings, recommendations for decision-makers, and a walkthrough of the dashboard.

It provides a clear, end-to-end understanding of the reasoning, methodology, and outcomes behind the project.


## Contributions
Contributions are welcome!
If you’d like to improve the analysis, enhance the code, or add new visualizations:
   1. Fork this repository
   2. Create a new branch
   3. Make your changes
   4. Submit a pull request

Please ensure your updates are well-documented and follow clean coding practices.


## License
This project is licensed under the MIT License.
You are free to use, modify, and distribute the code as long as the original license is included.

See the [**LICENSE**](license.txt) file for full details.


## Contact
If you have questions, suggestions, or opportunities to collaborate, feel free to reach out:\

Karthik Suresh
LinkedIn: [Link](www.linkedin.com/in/karthik-suresh-ks010)
