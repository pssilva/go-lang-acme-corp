#!/bin/bash
############################
# 
# Script tem por objetivo realiza o download do banco de dados northwind em 
# MongoDB do reposritório: https://github.com/tmcnab/northwind-mongo.git
# 
# Filename: script-for-database.sh
#
# @author: Paulo Sérgio da Silva
# @email: pss1suporte@gmail.com 
# 
# Linux Command Line and Shell Scripting Bible 3rd Edition - The Comprehensive, Tutorial Resource 
# Chapter 25: Producing Scripts for Database, Web, and E-mail, pag 783
# Using a MySQL Database, pag 785
#
############################
# Enviando comando ao servidor MySQL

echo "############################"
echo "# Acessando o MySQL ########"
echo "############################"

MYSQL=$(which mysql)
PASS="3386mysql"

$MYSQL mytest -u root -p=$PASS <<EOF 
show databases;
EOF

# Enviando comando ao servidor MongoDB
echo "############################"
echo "# Acessando o MongoDB ######"
echo "############################"

MONGODB=$(which mongo)
#PASS="3386mysql"

$MONGODB <<EOF 
show dbs;
EOF 


exit