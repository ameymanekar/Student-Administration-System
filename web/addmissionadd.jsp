<%-- 
    Document   : addmissionadd
    Created on : Feb 17, 2018, 10:28:35 AM
    Author     : amey
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="stud" class="hvpm.dcpe.Student" scope="session" />
<jsp:setProperty name="stud" property="*" />
Insert Result: <%=stud.insert()%>
<% 
    response.sendRedirect("addmissionfrm.jsp");
  
 %>
