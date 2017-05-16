#!/bin/bash
############################
# 
# Script tem por objetivo realiza o download do banco de dados northwind em 
# MongoDB do reposritório: https://github.com/tmcnab/northwind-mongo.git
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
$MYSQL mytest -u northwind <<EOF 
show tables;
select * from products WHERE list_price = 18.0000
EOF

# /Users/pssilva/projetosNeon/go-lang-acme-corp/doc-repo/script-for-database.sh
 
exit