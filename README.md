# Contents
1) [Ways to Run](#Ways-to-run)
    - [To run the project using in Netbeans embedded Tomcat server](#To-run-the-project-using-in-Netbeans-embedded-Tomcat-server)
    - [To run using stand alone spring boot maven plugin](#To-run-using-stand-alone-spring-boot-maven-plugin)
    - [To run the project using in Netbeans embedded Tomcat server](#To-run-the-project-using-in-Netbeans-embedded-Tomcat-server)
2) [System Requirements](#system-requirements)

3) [Objectives](#Objectives)

4) [Requirements](#Requirements)

5) [Features](#Features)

6) [Use Cases](#Use-cases)
    - [User point of view](#User-point-of-view)
    - [Admin point of view](#Admin-point-of-view)

7) [Testing](#testing)
    - [User Testing](#user-tests)
    - [Admin Testing](#admin-tests)

8) [Javadoc](#javadoc)

9) [Project Digrams](#Project-diagrams)
    - [Sequence diagram](#Uml-class-diagram)
    - [Robustness diagram](#Robustness-diagram)
    - [Wireframes](#Wireframes)


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
The main objective in this project is to use java tools to be able to make a running shopping cart application which also lets a user explore a catalogue 
while also adding items to a basket which will then allow users to do a transaction in order for them to purchase items. Another objective this application 
has is when an admin logs in, it should be able to access "manage users" and "manage catalogue" which will either allow them to make changes to the users 
logging in or the catalogue page.


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
| 4 | Admin can remove users | removes user out of the database |
| 5 | Admin can view all users orders| admin can view all orders in the my orders page|

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
| 10 | If user enters the right details | a confirmation message will show |
| 11 | Users can see their orders in the my orders page | once press on the button it will redirect them to their orders|


# Testing

Below are two charts one for the user and one for the admin tests. These charts below show what action is taken and how will my application react to the action 
preformed. It also show what tests have passed and what tests have not been passed. 

## User Tests

| Test | Action| Expected Reaction| Status |
| --------- | --------------------------- | -------------------------------- | ------ |
| T1 | User enters in the host url for the application. | If the server is running you will be redirected to a home page, if not you will get an error | PASSED ✅ |
| T2 | User can log in or create an account | application logs in user or creates user or gives error due to wrong details  | PASSED ✅ |
| T3 | User can look for items they want and add to cart | the apllication gets these items and adds them to cart while also adding the total and quantity | PASSED ✅ |
| T4 | User can press on the basket page and purchase items | application will redirect to basket page when clicked and the purchase button will take the user to entere credit          card details | PASSED ✅  |
| T5 | User submits a transaction request, with invalid or outdated card details. | The transaction request is rejected leaving a status message and an error message. | FAILED ❌ | The tranaction design was not functioning and failing to show a succesful or unsuccussfail action|
| T6 | User submits a transaction request and has funds for this to go through. | The transaction passes, with the user being notified with details of where it went. |  FAILED ❌ | The tranaction design was not functioning on T5 therefore not allowing T6 to work|
| T7 | User views order in the "my orders" page | application shows all orders and order status on the "my orders" page | PASSED ✅  |
| T8 | User can log out | redirects them to home page in annonymous mode | PASSED ✅   |

## Admin Tests


| Test | Action| Expected Reaction| Status |
| --------- | --------------------------- | -------------------------------- | ------ |
| T1 | Admin enters in the host url for the application. | If the server is running you will be redirected to a home page, if not you will get an error | PASSED ✅ |
| T2 | Admin can log in | application logs in admin or gives error due to wrong details | PASSED ✅ |
| T3 | Admin can modify user| Allows admin to remove or add users | PASSED ✅  |
| T4 | Admin can modify catalog| Allows admin to remove or add items | FAILED ❌ | Wasn't able to show new products added even when trying different ways i would recieve an error| 
| T5 | Admin can view all users orders | when "my orders" is pressed on home page it will direct admin to view all orders | PASSED ✅  | 
| T6 | Admin can log out |  redirects them to home page in annonymous mode|  PASSED ✅  |

# Javadoc

javadoc modules:
ShoppingCartApplication-bank-client: Build Failed
ShoppingCartApplication-dao: Build Success
ShoppingCartApplication-model: Build Success
ShoppingCartApplication-service: Build Success
ShoppingCartApplication-web: Build Success

To view JavaDocs run:

on command prompt:

    mvn javadoc:javadoc 

or 

on netbeans:

Right click on a module to generate the javadoc

Visit https://maven.apache.org/plugins/maven-javadoc-plugin/index.html for more information.

# Project Diagrams
## Sequence diagram
A sequence diagram is a Unified Modeling Language (UML) diagram that illustrates the sequence of messages between objects in an interaction. A sequence diagram shows the sequence of messages passed between objects. Sequence diagrams can also show the control structures between objects. Below we can see three different object being an admin, customer and the shopping cart in between we see how those users and application control the structure of each object for example when the user adds items to the shopping cart the application reacts by adding the items and price to the basket so the user is able to purchase it.
    
![Sequence Diagram drawio (1)](https://user-images.githubusercontent.com/71653944/147834579-6df132ce-0e12-4a8e-b8bc-c1e34e97949f.png)


## Robustness diagram
The robustness diagram below shows how the user and admin will interact with the website through an interface, which will process the user input and direct the user to a catalogue they can buy from on the other hand you can also process the admin input and it directs the admin to a admin view only where they can add or remove items to the catalogue, remove or add users as well as view all orders made from different users.This application also allows users to make a purhcase If the inputs is valid there purchase was successful and will be stored in a database, if not the card is invalid and the application will direct you back to the credit card form. This diagram is used to show the main interactions between both user and domain and admin and domain and how they are connected.

![Robustness Diagram drawio](https://user-images.githubusercontent.com/71653944/147790847-db183617-697a-4772-8da4-b0edda906f31.png)

## Wireframes
i created some wireframes from my jsps to demonstarte how my application will look and what features they include:

### Home Page Jsp
![home drawio](https://user-images.githubusercontent.com/71653944/148647074-a9c75a55-4738-4872-a191-5f7c92f2224c.png)

### Shopping basket Page Jsp
![shoppingbasket drawio](https://user-images.githubusercontent.com/71653944/148647076-f2860e91-bfb7-4834-9c67-38378f11f7b8.png)

### Checkout Page Jsp
![checkout drawio](https://user-images.githubusercontent.com/71653944/148647493-cf9cadd7-8531-4248-9fb8-5a9b736c0548.png)

### Admin Catlog Page Jsp
![admincatalog drawio](https://user-images.githubusercontent.com/71653944/148648463-8f6eb50e-dea1-4240-a1a6-b59831a9bb35.png)

