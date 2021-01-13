<%-- 
    Document   : newreceipts
    Created on : Feb 17, 2018, 6:55:26 PM
    Author     : amey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<jsp:useBean id="stud" class="hvpm.dcpe.Student" scope="session" />
<jsp:setProperty name="stud" property="*" />
update Result: <%=stud.update2()%>
update Result: <%=stud.update55()%>
<%
    response.sendRedirect("receipts.jsp");
 %>

