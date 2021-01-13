<%-- 
    Document   : Update
    Created on : Feb 18, 2018, 2:12:47 AM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<center>
        <style> 
input[type=text] {
    width: 130px;
    box-sizing: border-box;
    border: 2px solid #ccc;
    border-radius: 4px;
    font-size: 16px;
    background-color: white;
    background-image: url('searchicon.png');
    background-position: 10px 10px; 
    background-repeat: no-repeat;
    padding: 12px 20px 12px 40px;
    -webkit-transition: width 0.4s ease-in-out;
    transition: width 0.4s ease-in-out;
    font-family: Arial, Helvetica, sans-serif;
}

input[type=text]:focus {
    width: 100%;
}



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
</style>
   
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
<td><%=resultSet.getString("joindate") %></td>
<td><%=resultSet.getString("contactno") %></td>
<td><%=resultSet.getString("DOB") %></td>
<td><%=resultSet.getString("cast") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("addrno") %></td>
<td><%=resultSet.getString("gender") %></td>



</tr>

</table>
<br>
<br>
<br>
<h1>Are you Sure You Want To Delete This Admission<h1>
        <img src="images/yes.png" width="10%" height="10%" >
<br>
<br>
<br>

<a href="Delete.jsp?sid=<%=resultSet.getString("sid")%>"><input type="submit" value="Delete " /> </a>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

</center>
</body>
</html>