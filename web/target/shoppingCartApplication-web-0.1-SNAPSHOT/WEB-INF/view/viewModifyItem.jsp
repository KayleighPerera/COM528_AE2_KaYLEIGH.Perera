<%-- 
    Document   : content
    Created on : Dec 26, 2021, 20:16
    Author     : Kayleigh Perera
--%>
<%@page import="org.solent.com504.oodd.cart.model.dto.ShoppingItem"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="header.jsp" />

<!-- Begin page content -->


<main role="main" class="container">
    <H1>Modify Item</H1>
    <div style="color:red;">${errorMessage}</div>
    <div style="color:green;">${message}</div>

    <form action="./catalog" method="POST">
        <p>Item Name <input type="text" name="name" ></input></p>
        <p>Price<input type="currency" name="price" ></input></p>
        <p> quantity <input type="number" name="quantity" ></input></p>
        <p><button type="submit" >Create New Item</button></p>
    </form> 

</main>

  

<jsp:include page="footer.jsp" />