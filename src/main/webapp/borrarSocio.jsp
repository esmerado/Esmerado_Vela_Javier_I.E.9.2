<%-- 
    Document   : borrarSocio
    Created on : 18 may 2021, 18:37:09
    Author     : esmer
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% Class.forName("com.mysql.jdbc.Driver");
			Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost/baloncesto", "root", "");
			Statement s = conexion.createStatement(); 
                        try{
                        	
                        s.execute("Delete from socios where id_socio = " +request.getParameter("id_socio"));
                        }catch(Exception e){
                        	System.err.print("No se ha podido eliminar el socio.");
                        }
        
        %>
    </body>
    <script>document.location = "index.jsp"</script>
</html>
