# Contents
1) [Ways to Run](#Ways-to-run)
    - [To run the project using in Netbeans embedded Tomcat server](#To-run-the-project-using-in-Netbeans-embedded-Tomcat-server)
    - [To run using stand alone spring boot maven plugin](#To-run-using-stand-alone-spring-boot-maven-plugin)
    - [To run the project using in Netbeans embedded Tomcat server](#To-run-the-project-using-in-Netbeans-embedded-Tomcat-server)
2) [System Requirements](#system-requirements)

3) [Objectives](#Objectives)

4) [Requirements](#Requirements)

5) [Features](#Reatures)

6) [Use Cases](#Use-cases)
    - [User point of view](#User-point-of-view)
    - [Admin point of view](#Admin-point-of-view)

8) [Testing](#testing)

9) [Project Digrams](#Project-diagrams)
    - [Wireframes](#Wireframes)
    - [UML Class diagram](#Uml-class-diagram)
    - [Robustness diagram](#Robustness-diagram)


# Ways to run

### To run using stand alone spring boot maven plugin

at base of project do a build
```
mvn clean install
```
move to web module and run project
```
cd web
mvn spring-boot:run
```
the project will be served at http://localhost:8080/index.html


### To run the project using in Netbeans embedded Tomcat server

If you right click on the webfacade-example1 project in netbeans and select 'run' netbeans will spin up a tomcat instance and launch your application.

If you are asked for username and password just use the default admin admin.
 
(You must make sure you have stopped any maven started tomcat before you do this.)

You will be able to see the application at http://localhost:8080/shoppingCartApplication/

Note that sometimes the browser caches the old index.html so you may need to enter the correct url to access the app

http://localhost:8080/shoppingCartApplication/home

not

http://localhost:8080/shoppingCartApplication/home.jsp

# System Requirements
The system requirements for this program are:

- Java JDK version 11 or newer.
- Apache Maven 3.8 or newer
- Tomcat 9
- Google Chrome or Internet Explorer

# Objectives
The main objective in this project is to use java tools to be able to let a
user explore a catalogue while also adding items to a basket which will then 
allow users to do a transaction in order for them to purchase the item.


# Requirements
Their are many tools needed to make this application working, these include things like:
- This application uses Java technology for the back end 
- The web page includes javascript and CSS aswell as some html

# Features
- allows users to be able to remove, modify and view their catalogue
- allows administartors to remove from the catalogue
- allows administartors to modify users aswell as modify orders in the system
- system interacts with the bank service over a ReST interface to charge the user's credit card 

# Use Cases

## Admin point of view

| Admin | Action | Response|
|------|--------|---------|
| 1 | Admin logs in | Redirects user admin view | 
| 2 | Admin can go to basket/admin/manage catalog| redirects to a page where only admins can go|
| 3 | Admin can add items to the catalog | adds items to the catalogue page for admin and user|
| 4 | Admin can view all users orders| admin can view all orders in the my orders page|

## User point of view

|User | Action | Response|
|------|--------|---------|
| 1 | User enteres application URL in search engine | Redirects user to home page |
| 2 | User will need to log in the application | Redirects user to user view page |
| 3 | User can add items to shopping cart | automatically adds the item to basket and shopping cart |
| 4 | User can remove items from basket or shopping cart | automatically removes item deducting the price|
| 5 | User can purchase items in the basket link in the nav bar | redirects user to basket where the items added are viewd as well as price |
| 6 | User can buy the items by pressing on pucharse | redirects user to the credit card phase |
| 7 | User enteres the correct card information | Application checks if the credit card details are correct and vlaidates it using the luhn algorithm
| 8 | If user fails to enter card details | An error message is shown letting user know details must be entered|
| 9 | If user enters the wrong details | An error message is shown to correct the details |
| 10* | If user enters the right details | a confirmation message will show |
| 11 | Users can see their orders in the my orders page | once press on the button it will redirect them to their orders|

## Annonymus point of view

| Admin | Action | Response|
|------|--------|---------|
| 1 |  | | 
| 2 |  | |
| 3 |  | |
| 4 |  | |



# Testing
# Project Diagrams
