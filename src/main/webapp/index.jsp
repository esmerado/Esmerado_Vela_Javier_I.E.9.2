<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
<head>
<title>JavaCRUD</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">
<link rel="stylesheet" href="styles.css">
<link rel="icon" type="image/png" href="https://albertoroura.com/wp-content/uploads/2014/05/html5_logo.png">
</head>
<body>
	<div class="container">
		<br></br>

		<div class="panel panel-primary">

			<div class="panel-heading text-center">
				<h2>Club de Baloncesto</h2>
			</div>
			<%
			Class.forName("com.mysql.jdbc.Driver");
			Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost/baloncesto", "root", "");
			Statement s = conexion.createStatement();

			ResultSet listado = s.executeQuery("SELECT * FROM socios");
			%>
			<table class="table table-success table-striped table-bordered">
				<tr>

					<th>Nº Socio</th>
					<th>Name</th>
					<th>Heigh</th>
					<th>Age</th>
					<th>Location</th>
					<th></th>

				</tr>

				<form method="get" action="nuevoSocio.jsp">
					<tr>
						<td><input type="text" name="id_socio" size="5"></td>
						<td><input type="text" name="name" size="5"></td>
						<td><input type="text" name="heigh" size="5"></td>
						<td><input type="text" name="age" size="5"></td>
						<td><input type="text" name="location" size="5"></td>
						<td><button type="submit" value="Añadir"
								class="cbtn btn btn-primary btn-block ">
								Añadir</span></td>
					</tr>

				</form>
				<%
					while (listado.next()) {
					out.println("<tr><td>");
					out.println(listado.getString("id_socio") + "</td>");
					out.println("<td>" + listado.getString("name") + "</td>");
					out.println("<td>" + listado.getString("heigh") + "</td>");
					out.println("<td>" + listado.getString("age") + "</td>");
					out.println("<td>" + listado.getString("location") + "</td>");
				%>
				<td>
					<div class="d-flex justify-content-left">
						<form method="get" action="borrarSocio.jsp">
							<input type="hidden" name="id_socio"
								value="<%=listado.getInt("id_socio")%>"></input>
							<button type="submit" class="btn btn-danger">Eliminar</button>
						</form>

						<form method="get" action="formulario.jsp" class="ms-1">
							<input type="hidden" name="id_socio"
								value="<%=listado.getInt("id_socio")%>"></input> <input
								type="hidden" name="name" value="<%=listado.getString("name")%>"></input>
							<input type="hidden" name="heigh"
								value="<%=listado.getInt("heigh")%>"></input> <input
								type="hidden" name="age" value="<%=listado.getInt("age")%>"></input>
							<input type="hidden" name="location"
								value="<%=listado.getString("location")%>"></input>
							<button type="submit" class="btn btn-success">Modificar</button>
						</form>
					</div> <%
 	}
 %>

				</td>

			</table>

		</div>

	</div>
</body>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
	integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"
	integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT"
	crossorigin="anonymous"></script>
</html>
