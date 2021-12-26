<%-- 
   Document   : content
   Created on : Jan 4, 2020, 11:19:47 AM
   Author     : cgallen
   --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
   request.setAttribute("selectedPage","about");
   %>
<jsp:include page="header.jsp" />
<!-- Begin page content -->
<main class="container">
   <H1>Introduction</H1>
   <p>We were asked to create a Shopping application that would allow a user or admin to: </p>
   <ul>
       <li>add items to a shopping cart</li>
    <li>remove items from a shopping cart</li>
    <li>make a transaction</li>
    <li>while also letting admins add items to the catalog</li>
    
   </ul>
   <h1>Contributors </h1>
   <ul>   
       <a href="https://github.com/KayleighPerera"><li>Kayleigh Perera</li></a>
   </ul>
</main>
<jsp:include page="footer.jsp" />