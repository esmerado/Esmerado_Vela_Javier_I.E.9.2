package com.esmerado.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {

	private static final String URL = "jdbc:mysql://localhost:3306/baloncesto";
	private static final String USERNAME = "root";
	private static final String PASSWORD = "";
	private static Connection COONECT = null;

	// Establecemos conexión.
	public static Connection getInstance() throws SQLException {
		// Comprobamos si ya estamos conectados.
		// Si no lo estamos, nos connectamos,
		// y si ya estamos no entra en el if y devuelve nuestra variable.
		if (COONECT == null) {
			COONECT = DriverManager.getConnection(URL, USERNAME, PASSWORD);

		}

		return COONECT;
	}

}
