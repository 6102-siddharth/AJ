import mysql.connector as mc
mydb= mc.connect(
    host = "localhost",
    user = "root",
    password = "root",
    database ="sales_db"
)
print("Connected to MYSQL")

mycursur =mydb.cursor()
mycursur.execute("select * from sales")
results = mycursur.fetchall()

for i in results:
    print(i)