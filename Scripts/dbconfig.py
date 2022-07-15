import mysql.connector
import openpyxl 
import xlwt 
import pandas.io.sql as sql

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="root"
    
    )
mycursor = mydb.cursor()
mycursor.execute("USE deliverysystem;")

mycursor.execute("SELECT drivers.driver_name, orders.order_id FROM `orders` INNER JOIN drivers ON drivers.driver_id=orders.order_id;")
data=mycursor.fetchall()
print(data)
data2=sql.read_sql("SELECT drivers.driver_name, orders.order_id FROM `orders` INNER JOIN drivers ON drivers.driver_id=orders.order_id;", mydb)
data2.to_excel('data.xls')