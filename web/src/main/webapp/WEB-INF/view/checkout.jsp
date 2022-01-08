<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
   request.setAttribute("selectedPage","checkout");
%>
<%--import properties modules --%>
<%@page import="com.github.b4.dao.WebObjectFactory"%>
<%@page import="com.github.b4.dao.PropertiesDao"%>
<%--import logging modules --%>
<%@ page import="org.apache.logging.log4j.Logger" %>
<%@ page import="org.apache.logging.log4j.LogManager" %>
<%-- import controller modules --%>
<%@page import="com.github.b4.service.RestController"%>
<%-- get properties--%>
<%
   PropertiesDao propertiesDao = WebObjectFactory.getPropertiesDao();
   // get details of the recipient
   String recipient_name = propertiesDao.getProperty("recipient_name");
   String recipient_ccnumber = propertiesDao.getProperty("recipient_ccnumber");
   String recipient_issueNum = propertiesDao.getProperty("recipient_issueNum");
   String recipient_endDate = propertiesDao.getProperty("recipient_endDate");
   String recipient_cvv = propertiesDao.getProperty("recipient_cvv");
 %>
<%-- define backend things--%>
<%
String reply = "";
if ("POST".equals(request.getMethod())) {
    reply = RestController.handleRequest(request);
    }
%>
<jsp:include page="header.jsp" />
<script src="./resources/js/numpad.js" defer></script>
<main class="container">
   <form class="form-card" method="POST" id="card-form">
      <div class="form-group">
         <div class="btn-group-vertical">
            <input type="button" value="Send Money" onclick="document.getElementsByName('action')[0].value = 'transaction'"></input>
            <input type="button" value="Refund Money" onclick="document.getElementsByName('action')[0].value = 'refund'"></input>
            <input type="button" value="Check Credit card" onclick="document.getElementsByName('action')[0].value = 'lunn'"></input>
         </div>
         <br>
         <div id="sender">
            <h1> Sender </h1>
            <table class="table">
               <tbody>
                  <tr>
                     <td>Full Name</td>
                     <td><input type="text" size="36" name="sender_name" value="Jeff Bezos" required></td>
                  </tr>
                  <tr>
                     <td>Credit Card Number</td>
                     <td><input type="text" size="36" name="sender_ccnumber" value="5133880000000012" required></td>
                  </tr>
                  <tr>
                     <td>Issue Number</td>
                     <td><input type="text" size="36" name="sender_issueNum" value="01" required></td>
                  </tr>
                  <tr>
                     <td>Expiry Date</td>
                     <td><input type="text" size="36" name="sender_endDate" value="11/21" required></td>
                  </tr>
                  <tr>
                     <td>Cvv Code</td>
                     <td><input type="text" size="36" name="sender_cvv" value="123" class="form-group col-md-2" required></td>
                  </tr>
                  <tr>
                     <td>Amount</td>
                     <td><input type="number" size="36" name="amount" value="10" class="form-group col-md-2" required></td>
                  </tr>
               </tbody>
            </table>
         </div>
         <br><br>
         <div id="recipient">
            <h1> Recipient </h1>
            <table class="table">
               <tbody>
                  <tr>
                     <td>Full Name</td>
                     <td><input type="text" size="36" name="recipient_name" value="<%=recipient_name%>" readonly></td>
                  </tr>
                  <tr>
                     <td>Credit Card Number</td>
                     <td><input type="text" size="36" name="recipient_ccnumber" value="<%=recipient_ccnumber%>" readonly></td>
                  </tr>
                  <td>Issue Number</td>
                  <td><input type="text" size="36" name="recipient_issueNum" value="<%=recipient_issueNum%>" readonly></td>
                  </tr> 
                  <tr>
                     <td>Expiry Date</td>
                     <td><input type="text" size="36" name="recipient_endDate" value="<%=recipient_endDate%>" readonly></td>
                  </tr>
                  <tr>
                     <td>Cvv Code</td>
                     <td><input type="text" size="36" name="recipient_cvv" value="<%=recipient_cvv%>" class="form-group col-md-2" readonly></td>
                  </tr>
                  <tr>
                     <td>Action</td>
                     <td><input type="text" name="action" value="transaction" readonly> </td>
                  </tr>
               </tbody>
            </table>
         </div>
         <button type="button" onclick="window.location.href='orders'">Send Details </button>
      </div>
   </form>
   <p><%=reply%></p>
<jsp:include page="footer.jsp" />