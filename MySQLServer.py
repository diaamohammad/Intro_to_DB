import mysql.connector
from mysql.connector import Error

def create_database():
    try:
        connection = mysql.connector.connect(
            host='localhost',
            user='root',
            password='Alsemary55@@'
        )

        if connection.is_connected():
            cursor = connection.cursor()
            cursor.execute("SHOW DATABASES LIKE 'alx_book_store';")
            result = cursor.fetchone()

            if result:
                print("Database 'alx_book_store' already exists!")
            else:
                cursor.execute("CREATE DATABASE alx_book_store;")
                print("Database 'alx_book_store' created successfully!")

    except Error as err:
        print(f"Error: {err}")

    finally:
        if connection.is_connected():
            cursor.close()
            connection.close()
            print("MySQL connection is closed.")

create_database()



