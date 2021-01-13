<%-- 
    Document   : studinfo
    Created on : Feb 17, 2018, 11:13:49 AM
    Author     : amey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <style>
body {font-family: Arial, Helvetica, sans-serif;}
form {border: 3px solid #f1f1f1;}

table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
    font-family: Arial, Helvetica, sans-serif;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #4CAF50;
    color: white;
    font-family: Arial, Helvetica, sans-serif;
}

input[type=text], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}
input[type=number], select {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type=submit] {
    width: 100%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

div {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
}
</style>
<%
 String loginmsg="";
 if(request.getParameter("login")!=null)
    loginmsg="";
 %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       <%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String sid = request.getParameter("sid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost/";
String database = "hvpm";
String userid = "root";
String password = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<html>
<body>

<table bstyle="width:100%"  border="1">
<tr>
<tr>
    <th>Sid</th>
                    <th>Name</th>
                    <th>Course</th> 
                    <th>Fees</th>
                    <th>Fees Paid</th>
                    <th>Contact No</th>
                    <th>Date of Birth</th>
                   <th> Addmission Date</th>
                    <th>cast</th>
                    <th>email</th>
                    <th>Aadhaar Number</th>
                    <th>Gender</th>
</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from students where sid="+sid;
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
<td><%=resultSet.getString("sid") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("course") %></td>   
<td><%=resultSet.getString("fees") %></td>
<td><%=resultSet.getString("feespaid") %></td>
<td><%=resultSet.getString("contactno") %></td>
<td><%=resultSet.getString("DOB") %></td>
<td><%=resultSet.getString("joindate") %></td>


<td><%=resultSet.getString("cast") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("addrno") %></td>
<td><%=resultSet.getString("gender") %></td>



</tr>

</table>
          </from>
                
                
                
                 
                
      <form method="post" action="newreceipts.jsp" >
      <center> <h1> Update Receipts <h1> </center>
                   <input type="hidden" name="sid" value="<%=resultSet.getString("sid") %>" >
    <label for="fname"> Name</label>
    <input type="text" id="fname" name="name2" value="<%=resultSet.getString("name") %>">

    <label for="lname">Course</label>
    <input type="text" id="lname" name="co" value="<%=resultSet.getString("course") %>">
  
    <%int ddd = resultSet.getInt("refees");%>
      <%if(ddd > 1 ){
          %>
    <label for="lname">Fees Paid</label><br>
    <input type="number" id="lname" id="myText" min="1" max="21000" name="fp"  size="100%">
    
    <input type="submit" value="Update" method="display()" >
    <%
   }
   else {%>
   <pre>
                    <img src="img/paid.png" >                                                     <a href='receipts.jsp' ><img src="img/back.png"></a></PRE>
   </center>
   <% } %>
   
    
    
    
  </form>
  <%=loginmsg%>
                      
    
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

</div>
               
           
    </body>
</html>
