import pyodbc
import csv

conn = pyodbc.connect(
    "DRIVER={ODBC Driver 17 for SQL Server};"
    "SERVER=.\\SQLEXPRESS;"
    "DATABASE=FoodTrackDB;"
    "Trusted_Connection=yes;"
)

cursor = conn.cursor()

with open("data/foodtrucks.csv", encoding="utf-8") as archivo:
    lector = csv.DictReader(archivo)

    for fila in lector:
        try:
            cursor.execute("""
                INSERT INTO foodtrucks (foodtruck_id, name, cuisine_type, city)
                VALUES (?, ?, ?, ?)
            """,
            fila["foodtruck_id"],
            fila["name"],
            fila["cuisine_type"],
            fila["city"]
            )
        except Exception as e:
            print(f"Error al insertar foodtruck {fila}: {e}")

conn.commit()
cursor.close()
conn.close()

print("Carga finalizada correctamente.")
