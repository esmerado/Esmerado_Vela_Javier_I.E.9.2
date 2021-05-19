<%-- 
    Document   : formulario
    Created on : 18 may 2021, 18:42:44
    Author     : esmer
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
        <title>JSP Page</title>
        
    </head>
    <body>

        <div class="container">
        <table class="table table-success table-striped table-bordered mt-3">
            <form method="get" action="modificarSocio.jsp">
        	<tr class="text-center"><td colspan="2"><h3>Modificar Socio</h3></td></tr>
            <tr>
                <td>Id Socio</td><td><input type="text" name="id_socio" value="<%= request.getParameter("id_socio") %>" readonly="true "></td>
            </tr>
            <tr>
                <td>Name:</td><td><input type="text" name="name" value="<%= request.getParameter("name") %>"></td>
            </tr>
            <tr>
                <td>Heigh: </td><td><input type="text" name="heigh" value="<%= request.getParameter("heigh") %>"></td>
            </tr>
            <tr>
                <td>Age:</td><td><input type="text" name="age" value="<%= request.getParameter("age") %>"></td>
            </tr>
            <tr>
                <td>Location:</td><td><input type="text" name="location" value="<%= request.getParameter("location") %>"></td>
            </tr>
            <tr>
            	<div class="d-flex justify-content-center">
					<td colspan="5"><button class="btn btn-success" type="submit" value="Confirmar">Modificar</button>
					<button class="btn btn-danger" type="submit" value="Cancelar" href="index.jsp">Cancelar</button></td>
				</div>
            </tr>
            </form>
        </table>
        </div>
    </body>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
</html>
