#!/bin/bash
############################
# 
# Script tem por objetivo realiza o download do banco de dados northwind em 
# MongoDB do reposritório: https://github.com/tmcnab/northwind-mongo.git
# 
# @author: Paulo Sérgio da Silva
# @email: pss1suporte@gmail.com 
# 
############################
echo "############################"
echo "Clonando o Projeto"
echo "############################"
git clone https://github.com/tmcnab/northwind-mongo.git 

cd northwind-mongo/
PATH_TO=$(pwd)

echo "PATH_TO=$PATH_TO" 
echo "############################"
echo "Importanto as coleções!"
mongorestore --db northwind --collection categories $PATH_TO/dump/categories.bson
mongorestore --db northwind --collection customers $PATH_TO/dump/customers.bson
mongorestore --db northwind --collection employee-territories $PATH_TO/dump/employee-territories.bson
mongorestore --db northwind --collection employees $PATH_TO/dump/employees.bson
mongorestore --db northwind --collection order-details $PATH_TO/dump/order-details.bson
mongorestore --db northwind --collection orders $PATH_TO/dump/orders.bson
mongorestore --db northwind --collection products $PATH_TO/dump/products.bson
mongorestore --db northwind --collection regions $PATH_TO/dump/regions.bson
mongorestore --db northwind --collection shippers $PATH_TO/dump/shippers.bson
mongorestore --db northwind --collection suppliers $PATH_TO/dump/suppliers.bson
mongorestore --db northwind --collection system.indexes $PATH_TO/dump/system.indexes.bson
mongorestore --db northwind --collection territories $PATH_TO/dump/territories.bson
echo "############################"
echo ""
############################

# Linux Command Line and Shell Scripting Bible 3rd Edition

