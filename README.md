# whats_For_Dinner

DB Access: 
Username: root
Password: 1qaz2wsx!QAZ@WSX

***ACCESS***
Tomcat access:
Username: mitchell.doruff
Password: 1qaz2wsx!QAZ@WSX

***To start requirements:***

1) Netbeans installed

2) JDBC J file attached for SQL Server in netbeans

3) RecipeDB schema imported into SQL (found in git)

4) Tomcat congigured (Should be mostly automatic)

5) Start Tomcat and Sql

6) In browser URL field enter:http://localhost:8080/WhatForDinner/ 

7)Enter Ingredients with a comma separating each respective ingredient

8) Select desired recipe to view from the list

**Classes**
GetRecipeController: 
Retrieves the recipe the user clicked on to view from the database. 

IngredientMatchController: 
Takes the ingredients the user entered and adds them to an array for the database to query.  

Model:
Responsible for taking all the search results and inserts them into HTML/CSS so the user can view them.

Recipe List Controller: 

Responsible for retrieving all the recipes that match the user query with the ingredients they have on hand. 



***What Needs work***
Database

HTML Formatting

How to send information to HTML - Mitchell
