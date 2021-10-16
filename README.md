Open a terminal (command prompt in Microsoft Windows) and open a MySQL client as a user who can create new users.
For example, on a Linux system, use the following command;
$ sudo mysql --password

To create the database and seed it, run the following commands at the mysql prompt:
mysql> create database accounts;
mysql> use accounts;
mysql> source accounts.sql;

To do the api-rest tests use the google chrome extension called "Firecamp".

In the "src" folder there is another folder called "java", this is where all the packages with the classes are located.

Inside project folder is a file "accounts.sql". 
There is are tables called 'accounts', 'savingsAccounts' and 'currentAccounts'.
it contains all the accounts, savings accounts or current accounts. 
This is seen more clearly in the stored procedure.

To run the program, open it in intellij or SpringToolSuite and click run


