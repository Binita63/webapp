<%-- 
    Document   : index
    Created on : Sep 11, 2016, 2:09:47 PM
    Author     : Toshiba
--%>

<%@page import="com.leapfrog.webapp.student.dao.impl.StudentDAOImpl"%>
<%@page import="com.leapfrog.webapp.student.Student"%>
<%@page import="com.leapfrog.webapp.student.dao.StudentDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="container">
            <table class="table table-bordered table-stripped table-hover">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Contact</th>
                    <th>Action</th>
                </tr>
                 <%
                StudentDAO studentdao=new StudentDAOImpl();
                for(Student s:studentdao.getAll()){
                %>
                <tr>
                    <td><%=s.getId()%></td>
                    <td><%=s.getFname()%> <%=s.getLname()%></td>
                    
                    <td><%=s.getContact()%></td>
                    <td><%=s.getEmail()%></td>
               
                    <td>
                        <a href="insertform.java?id=<%=s.getId()%>"><button class="btn btn-primary glyphicon glyphicon-plus"></button></a>
                        <a href="edit.jsp?id=<%=s.getId()%>"><button class="btn btn-success glyphicon glyphicon-pencil"></button></a>
                        <a href="delete.jsp?id=<%=s.getId()%>"><button class="btn btn-danger glyphicon glyphicon-trash" onclick ="return confirm('Are you sure you want to delete?()')" </button></a>
                    </td>
                     </tr>
                     <%
                }
                     %>
            </table>
        </div>
    </body>
</html>
