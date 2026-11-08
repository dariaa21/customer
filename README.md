# Customer Churn prediction

This project analyses the "WA_Fn-UseC_-Telco-Customer-Churn.csv" dataset to identify the primary factors driving customer churn in a telecomunication company.

It includes the  data cleaning, exploratory data analysis and data preprocessing steps necessary to train predictive machine learning models.

## Project structure

- "data/": Contains the raw dataset ("WA_Fn-UseC_-Telco-Customer-Churn.csv").
- "notebook/": Contains the Jupyter Notebook file for data exploration and model training.
- "setup.sh": Shell script for automated virtual environment creation and dependency installation.

## Installation and setup

1. Clone the repository.
2. Run the setup script using the commands:

chmod +x setup.sh
./setup.sh
source .venv/bin/activate

## Analysis steps

1. Data cleaning

- Removed the "customerID" column since it had no significance for the target variable.
- Converted the "TotalCharges" column from a string to a numeric value.
- Removed the records with incomplete fields.

2. Exploratory data analysis

There were several plots generated in order to understand data distribution and the relationship between features and the target variable:

- Churn distribution: Approximately 25% of the customers in the dataset churned.
- Contract type: Customers with month-to-month contracts have a higher churn rate than those with one-year or two-year contracts.
- Tenure: Density plots show that churn probability is higher in the first months of the contract.
- Monthly charges: Customers who churned tend to have higher monthly charges.

3. Data preprocessing

- Binary encoding: Variables that had only two possible values were mapped to numeric values.
- One-Hot encoding: Nominal categorical variables were encoded using pd.get_dummies(drop_first=True) to prevent multicollinearity.

4. Modeling and evaluation

- Model training: A Logistic Regression model was trained with the preprocessed dataset to predict the probability of a customer churning.
- Confusion matrix: The model's performance was evaluated using a confusion matrix to see the number of correct and incorrect predictions.