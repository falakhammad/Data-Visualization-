import pandas as pd
from sqlalchemy import create_engine
import pyodbc

print("Loading Excel file...")
df = pd.read_excel('Student Social Media And Mental Health Impact.xlsx')

print("Rows:", len(df))


engine = create_engine(
    "mssql+pyodbc://@localhost\\SQLEXPRESS/StudentsMentalHealth"
    "?driver=ODBC+Driver+17+for+SQL+Server"
    "&trusted_connection=yes"
)

print("Uploading data...")
df.to_sql('Students', engine, if_exists='replace', index=False)

print("Done! Data uploaded successfully.")