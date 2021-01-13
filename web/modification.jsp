<%-- 
    Document   : modification
    Created on : Feb 18, 2018, 2:04:22 AM
    Author     : Asus
--%>
<%@page import="hvpm.dcpe.Student"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <%
        String search="";
        if(request.getParameter("search")!=null)
            search=request.getParameter("search");
        %>
        <style> 
           body {font-family: Arial, Helvetica, sans-serif;}
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
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #4CAF50;
    color: white;
}

</style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <form>
           <h3> Name : <input type="text" name="search"  value='<%=search%>'  placeholder="Search.." required/>
           </h3>
            </form>
            <hr>
            <table style="width:100%" cellpadding="5px" cellspacing="10px" border="2" class="boxsmall" >
             <tr>
                    <th>Name</th>
                    <th>Course</th> 
                    <th>Fees</th>
                    <th>Fees Paid</th>
                    <th>Contact No</th>
                    <th>Update</th>
                    <th>Delete</th>
                 
                </tr>
                
                <%
                Student stud=new Student();
                Vector vlist=stud.list(search);
                for(int i=0;i<vlist.size();i++)
            {
                Student s=(Student)vlist.get(i);
                %>
                <tr>
                    <td><%=s.getName()%></td><td><%=s.getCourse()%></td>
                    <td><%=s.getFees()%></td><td><%=s.getFeespaid()%></td>
                    <td><%=s.getContactno()%></td>
                    
                        <td><a href='Update.jsp?sid=<%=s.getSid()%>' ><img src="img/update data.png" height="30px" > </a></td>
                         <td><a href='delete2.jsp?sid=<%=s.getSid()%>' ><img src="images/Delete.png" height="30px"></a></td>
           </tr>
                <%  
            }
             %>
            </table>
    <br>
    <br>
    <br>
    <br>
  
    </body>
</html>
