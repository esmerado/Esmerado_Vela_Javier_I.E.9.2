<%-- 
    Document   : grabaSocio
    Created on : 18 may 2021, 18:06:38
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
	<%
		Class.forName("com.mysql.jdbc.Driver");
	Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost/baloncesto", "root", "");
	Statement s = conexion.createStatement();

	try {
		s.execute("INSERT INTO socios values(" + request.getParameter("id_socio") + ",'" + request.getParameter("name")
		+ "','" + request.getParameter("heigh") + "','" + request.getParameter("age") + "','"
		+ request.getParameter("location") + "')");
	} catch (Exception e) {
		System.err.print("Valor mal introducidos.");
	}
	%>
</body>
<script>
	document.location = "index.jsp"
</script>
</html>
