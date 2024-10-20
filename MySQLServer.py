import mysql.connector

try:

 connection = mysql.connector.Connect(
    host="localhost",
    user="root",
    password="Alsemary55@@"
 )

 cursor=connection.cursor()
 cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store;")
 print("Database 'alx_book_store' created successfully!")
except mysql.connector.Error as err:
 print(f"error {err}")
 
finally:
 if connection.is_connected:
  cursor.close()
  connection.close()
  print("MySQL connection is closed.")



