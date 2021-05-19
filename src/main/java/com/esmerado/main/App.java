package com.esmerado.main;

import java.sql.Connection;
import java.sql.SQLException;

import com.esmerado.objects.Persona;
import com.esmerado.repository.PersonaRepositorio;
import com.esmerado.repository.Repositorio;
import com.esmerado.util.Conexion;

/**
 * Hello world!
 *
 */
public class App {
	public static void main(String[] args) {

		try (Connection con = Conexion.getInstance()) {

			Repositorio<Persona> repositorio = new PersonaRepositorio();
			repositorio.findAll().forEach(System.out::println);
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
}
