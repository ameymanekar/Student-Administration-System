<%-- 
    Document   : links
    Created on : Feb 15, 2018, 11:19:18 AM
    Author     : amey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <style>
        body {font-family: Arial, Helvetica, sans-serif;}
div.scrollmenu {
    background-color: #333;
    overflow: auto;
    white-space: nowrap;
   
}

div.scrollmenu a {
    display: inline-block;
    color: white;
    text-align: center;
    padding: 14px;
    text-decoration: none;
}

div.scrollmenu a:hover {
    background-color: #777;
    
    
}

</style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 
        <title>JSP Page</title>
        
    </head>
    
    <body class="page" >
   
    
        
        <div class="scrollmenu"  >
        
        
        <table cellspacing="5px" width="100%" >
            <th><td><a  href="home.jsp" target="f2" >Home</a></td></th>
            <th><td><a  href="addmissionfrm.jsp" target="f2" >Admissions</a></td></th>
            <th><td><a  href="viewaddmission.jsp" target="f2" >View Admissions</a></td></th>
            <th><td><a  href="receipts.jsp" target="f2" >Receipts</a></td></th>
            <th><td><a  href="modification.jsp" target="f2" >Modification</a></td></th>
                <th><td ><a  href="index.jsp" target="_top"  >Logout</a></td></th>
        </table>
           
    </div>
    </body>
</html>
