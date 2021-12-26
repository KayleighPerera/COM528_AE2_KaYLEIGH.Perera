<%@page import="com.github.b4.dao.WebObjectFactory"%>
<%@page import="com.github.b4.dao.PropertiesDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
   PropertiesDao propertiesDao = WebObjectFactory.getPropertiesDao();
   String rest_url = propertiesDao.getProperty("rest_url");
   String recipient_name = propertiesDao.getProperty("recipient_name");
   String recipient_ccnumber = propertiesDao.getProperty("recipient_ccnumber");
   String recipient_issueNum = propertiesDao.getProperty("recipient_issueNum");
   String recipient_endDate = propertiesDao.getProperty("recipient_endDate");
   String recipient_cvv = propertiesDao.getProperty("recipient_cvv");
   String action = request.getParameter("action");
   %>
<%
   request.setAttribute("selectedPage","properties");
   %>
<% 
   if ("update".equals(action)) {
   // update bank api url
   propertiesDao.setProperty("rest_url", request.getParameter("rest_url"));
   rest_url = request.getParameter("rest_url");
   // update Recipient details
   // recipient_name
   propertiesDao.setProperty("recipient_name", request.getParameter("recipient_name"));
   recipient_name = request.getParameter("recipient_name");
   // recipient_ccnumber
   propertiesDao.setProperty("recipient_ccnumber", request.getParameter("recipient_ccnumber"));
   rest_url = request.getParameter("recipient_ccnumber");
   //recipient_issueNum
   propertiesDao.setProperty("recipient_issueNum", request.getParameter("recipient_issueNum"));
   rest_url = request.getParameter("recipient_issueNum");
   // recipient_endDate
   propertiesDao.setProperty("recipient_endDate", request.getParameter("recipient_endDate"));
   rest_url = request.getParameter("recipient_endDate");
   // 
   propertiesDao.setProperty("recipient_cvv", request.getParameter("recipient_cvv"));
   rest_url = request.getParameter("recipient_cvv");   
   
   }
   %>
<jsp:include page="header.jsp" />
<!-- Begin page content -->
<main class="container">
   <script src="./resources/js/numpad.js" defer></script>
   <form class="form-card" method="POST" id="card-form">
      <div class="form-group">
         <table class="table">
            <tbody>
               <h1>Admin properties</h1>
               <tr>
                  <td>Bank API endpoint</td>
                  <td><input type="text" size="36" name="rest_url" value="<%=rest_url%>"></td>
               </tr>
            </tbody>
         </table>
         <h1>Recipient Details</h1>
         <table class="table">
            <tbody>
               <tr>
                  <td>Full Name</td>
                  <td><input type="text" size="36" name="recipient_name" value="<%=recipient_name%>" required></td>
               </tr>
               <tr>
                  <td>Credit Card Number</td>
                  <td><input type="text" size="36" name="recipient_ccnumber" value="<%=recipient_ccnumber%>" required></td>
                  <td><button name="selectButtons" type="button" class="btn ml-2 rounded" value="recipient_ccnumber">Select</button></td>
               </tr>
               <td>Issue Number</td>
               <td><input type="text" size="36" name="recipient_issueNum" value="<%=recipient_issueNum%>" required></td>
               <td><button name="selectButtons" type="button" class="btn ml-2 rounded" value="recipient_issueNum">Select</button></td>
               </tr> 
               <tr>
                  <td>Expiry Date</td>
                  <td><input type="text" size="36" name="recipient_endDate" value="<%=recipient_endDate%>" required></td>
                  <td><button name="selectButtons" type="button" class="btn ml-2 rounded" value="recipient_endDate">Select</button></td>
               </tr>
               <tr>
                  <td>Cvv Code</td>
                  <td><input type="text" size="36" name="recipient_cvv" value="<%=recipient_cvv%>" class="form-group col-md-2"></td>
                  <td><button name="selectButtons" type="button" class="btn ml-2 rounded" value="recipient_cvv">Select</button></td>
               </tr>
            </tbody>
         </table>
         <div id="numpad" class="text-center">
            <div class="btn-group btn-group-lg" role="group">
               <button name="numpad" type="button" class="btn btn-secondary" onclick="document.getElementsByName ('recipient_ccnumber')[0].value = document.getElementsByName('recipient_ccnumber')[0].value + '1';">1</button>
               <button name="numpad" type="button" class="btn btn-secondary" onclick="document.getElementsByName('recipient_ccnumber')[0].value = document.getElementsByName('recipient_ccnumber')[0].value + '2';">2</button>
               <button name="numpad" type="button" class="btn btn-secondary" onclick="document.getElementsByName('recipient_ccnumber')[0].value = document.getElementsByName('recipient_ccnumber')[0].value + '3';">3</button>
            </div>
            <br>
            <div class="btn-group btn-group-lg" role="group">
               <button name="numpad" type="button" class="btn btn-secondary" onclick="document.getElementsByName('recipient_ccnumber')[0].value = document.getElementsByName('recipient_ccnumber')[0].value + '4';">4</button>
               <button name="numpad" type="button" class="btn btn-secondary" onclick="document.getElementsByName('recipient_ccnumber')[0].value = document.getElementsByName('recipient_ccnumber')[0].value + '5';">5</button>
               <button name="numpad" type="button" class="btn btn-secondary" onclick="document.getElementsByName('recipient_ccnumber')[0].value = document.getElementsByName('recipient_ccnumber')[0].value + '6';">6</button>
            </div>
            <br>
            <div class="btn-group btn-group-lg" role="group">
               <button name="numpad" type="button" class="btn btn-outline-secondary py-3" onclick="document.getElementsByName('recipient_ccnumber')[0].value = document.getElementsByName('recipient_ccnumber')[0].value + '7';">7</button>
               <button name="numpad" type="button" class="btn btn-outline-secondary py-3" onclick="document.getElementsByName('recipient_ccnumber')[0].value = document.getElementsByName('recipient_ccnumber')[0].value + '8';">8</button>
               <button name="numpad" type="button" class="btn btn-outline-secondary py-3" onclick="document.getElementsByName('recipient_ccnumber')[0].value = document.getElementsByName('recipient_ccnumber')[0].value + '9';">9</button>
            </div>
            <br>
            <div class="btn-group btn-group-lg" role="group">
               <button name="numpad" type="button" class="btn btn-outline-secondary py-3" onclick="document.getElementsByName('recipient_ccnumber')[0].value = document.getElementsByName('recipient_ccnumber')[0].value + '*';">*</button>
               <button name="numpad" type="button" class="btn btn-outline-secondary py-3" onclick="document.getElementsByName('recipient_ccnumber')[0].value = document.getElementsByName('recipient_ccnumber')[0].value + '0';">0</button>
               <button name="numpad" type="button" class="btn btn-outline-secondary py-3" onclick="document.getElementsByName('recipient_ccnumber')[0].value = document.getElementsByName('recipient_ccnumber')[0].value + '/';">/</button>
            </div>
            <br>
            <div class="btn-group btn-group-lg" role="group">
               <button name="numpad-clear" type="button" class="btn btn-danger py-3" onclick="document.getElementsByName('recipient_ccnumber')[0].value = document.getElementsByName('recipient_ccnumber')[0].value = '';">Clear</button>
               <button name="numpad" type="button" class="btn btn-outline-secondary py-3" onclick="document.getElementsByName('recipient_ccnumber')[0].value = document.getElementsByName('recipient_ccnumber')[0].value + '#';">#</button>
               <button name="numpad-back" type="button" class="btn btn-danger py-3" onclick="document.getElementsByName('recipient_ccnumber')[0].value = document.getElementsByName('recipient_ccnumber')[0].value.slice(0, -1);">Back</button>
            </div>
         </div>
         <input type="hidden" name="action" value="update"> 
         <button class="btn ml-2 rounded" type="submit">Update Details</button>
      </div>
   </form>
   <% if (("update".equals(action))) {%>
   <p>Updated Properties</p>
   <% }%>
</main>
<jsp:include page="footer.jsp" />