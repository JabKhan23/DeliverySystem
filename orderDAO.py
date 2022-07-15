import mysql.connector 

def connect():

    deliveryDatabse = mysql.connector.connect(
            host="localhost",
            user="root",
            passwd= "",
            database ="DeliverySystem"
        )
    return deliveryDatabse

  
def readAll(db):

    my_cursor = db.cursor()
    my_cursor.execute("SELECT * FROM " + "Orders")

    for x in my_cursor: 
        print(x)


def readCol(db, colname):

    my_cursor = db.cursor()
    my_cursor.execute("SELECT " + colname + " FROM " + "Orders")
    
    columnVals = []
    for x in my_cursor:
        columnVals.append(x[0]) 
          
    return columnVals
    
