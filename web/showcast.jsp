





<%@page import="hvpm.dcpe.Student"%>
<%@page import="java.util.Vector"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <%
        String search="";
        if(request.getParameter("search")!=null)
            search=request.getParameter("search");
        %>
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
   
    body
{
    counter-reset: Serial;           /* Set the Serial counter to 0 */
}

table
{
    
}

tr td:first-child:before
{
  counter-increment: Serial;      /* Increment the Serial counter */
  content: " " counter(Serial); /* Display the counter */
}
</style>


<table  style="width:100%" cellpadding="5px" cellspacing="5px" border="1"  >
             <tr>
                 <th>Sr no.</th>
                    
                    <th>Name</th>
                    <th>Course</th> 
                    <th>Fees</th>
                    <th>Fees Paid</th>
                    <th>Contact No</th>
                    <th>Date of Birth</th>
                   <th> Addmission Date</th>
                    <th>caste</th>
                    <th>email</th>
                    <th>Aadhaar Number</th>
                    <th>Gender</th>
                   
                </tr>
                
                <%
                Student stud=new Student();
                Vector vlist=stud.list22(search);
                for(int i=0;i<vlist.size();i++)
            {
                Student s=(Student)vlist.get(i);
                %>
                <tr>
                   <td></td>
                    <td><%=s.getName()%></td><td><%=s.getCourse()%></td>
                    <td><%=s.getFees()%></td><td><%=s.getFeespaid()%></td>
                    <td><%=s.getContactno()%></td><td><%=s.getJoindate()%></td>
                    <td><%=s.getDOB()%></td><td><%=s.getcast()%></td>
                    <td><%=s.getemail()%></td><td><%=s.getaddrno()%></td>
                    <td><%=s.getgender()%></td>
                   
                       </tr>
                <%  
            }
             %>
            </table>
