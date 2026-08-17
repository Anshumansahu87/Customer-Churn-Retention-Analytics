import pandas as pd

df = pd.read_csv("../dataset/customer_churn.csv")

total_customers = df["Customer ID"].nunique()
churned = (df["Churn"] == "Yes").sum()
churn_rate = churned / total_customers

print("Total Customers:", total_customers)
print("Churned Customers:", churned)
print("Churn Rate:", f"{churn_rate:.2%}")
print("Average Monthly Charges:", round(df["Monthly Charges"].mean(), 2))

print("\nChurn by Contract:")
print(
    df.groupby("Contract")["Churn"]
      .apply(lambda x: (x == "Yes").mean())
      .sort_values(ascending=False)
)

print("\nChurn by Payment Method:")
print(
    df.groupby("Payment Method")["Churn"]
      .apply(lambda x: (x == "Yes").mean())
      .sort_values(ascending=False)
)

print("\nChurn by Tenure Segment:")
print(
    df.groupby("Customer Segment")["Churn"]
      .apply(lambda x: (x == "Yes").mean())
)
