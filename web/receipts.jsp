<%-- 
    Document   : receipts
    Created on : Feb 17, 2018, 10:54:01 AM
    Author     : amey
--%>
<%@page import="java.io.File"%>
<%@page import="hvpm.dcpe.Student"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
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

</style>

    <%
        String search = "";
        if (request.getParameter("search") != null) {
            search = request.getParameter("search");
        }
    %>
    <body class="page" >
     
        <div class="boxmain" >
            <form>
               <h3> Name : <input type="text" name="search" size="40" value='<%=search%>' placeholder="Search.." required />
               </h3>
            </form>
            <hr>
            <table style="width:100%" cellpadding="5px" cellspacing="5px" border="1" class="boxsmall" >
                <tr>
                    <th>Name</th>
                    <th>Course</th> 
                    <th>Fees</th>
                    <th>Fees Paid</th>
                    <th>Remaining Fees</th>
                    <th>Contact No</th>
                    <th>Update Fees</th>
                    <th>GET Receipts</th>
                    
                </tr>
                <%
                    Student stud = new Student();
                    Vector vlist = stud.list(search);
                    for (int i = 0; i <vlist.size(); i++) {
                        Student s = (Student) vlist.get(i);
                %>
                   
                <tr>
                    <td><%=s.getName()%></td><td><%=s.getCourse()%></td>
                    <td><%=s.getFees()%></td><td><%=s.getFeespaid()%></td>
                    <td><%=s.getReFees()%></td>
                    <td><%=s.getContactno()%></td>
                    <td><a href='studinfo.jsp?sid=<%=s.getSid()%>' ><img src="img/66.png" height="30px"></a></td>
                    <td> <a href='GetReceipt.jsp?sid=<%=s.getSid()%>' ><img src="img/77.png" height="30px" ></a></td>


                </tr>
                <%
                    }
                %>
            </table>
        </div>
    </body>
</html>
