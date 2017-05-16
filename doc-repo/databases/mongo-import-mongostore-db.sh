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
cd northwind-mongo
echo ""
echo "############################"
echo "Importanto as coleções!"
mongorestore --db northwind --collection categories --nsInclude dump/ categories.bson
mongorestore --db northwind --collection customers --nsInclude dump/ customers.bson
mongorestore --db northwind --collection employee-territories --nsInclude dump/ employee-territories.bson
mongorestore --db northwind --collection employees --nsInclude dump/ employees.bson
mongorestore --db northwind --collection order-details --nsInclude dump/ order-details.bson
mongorestore --db northwind --collection orders --nsInclude dump/ orders.bson
mongorestore --db northwind --collection products --nsInclude dump/ products.bson
mongorestore --db northwind --collection regions --nsInclude dump/ regions.bson
mongorestore --db northwind --collection shippers --nsInclude dump/ shippers.bson
mongorestore --db northwind --collection suppliers --nsInclude dump/ suppliers.bson
mongorestore --db northwind --collection system.indexes --nsInclude dump/ system.indexes.bson
mongorestore --db northwind --collection territories --nsInclude dump/ territories.bson
echo "############################"
echo ""
############################

# Linux Command Line and Shell Scripting Bible 3rd Edition