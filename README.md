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
# Testing
# Project Diagrams
