package com.esmerado.repository;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.esmerado.objects.Persona;
import com.esmerado.util.Conexion;

public class PersonaRepositorio implements Repositorio<Persona> {

	private Connection getConnection() throws SQLException {
		return Conexion.getInstance();
	}

	// Reciclamos código para cuando necesitamos obtener en un objeto los datos.
	private Persona createPersona(ResultSet rs) throws SQLException {
		Persona p = new Persona(rs.getInt("id_socio"), rs.getString("name"), rs.getInt("heigh"), rs.getInt("age"), rs.getString("location"));
		return p;
	}

	@Override
	public List<Persona> findAll() {
		List<Persona> personas = new ArrayList<>();

		try (Statement stmt = getConnection().createStatement();
				ResultSet rs = stmt.executeQuery("Select * From socios")) {

			while (rs.next()) {
				Persona p = createPersona(rs);
				personas.add(p);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return personas;
	}

	@Override
	public Persona findId(Integer id) {

		Persona persona = null;

		try (PreparedStatement stmt = getConnection().prepareStatement("Select * From socios Where id_actor = ?")) {
			stmt.setInt(1, id);

			try (ResultSet rs = stmt.executeQuery()) {
				if (rs.next()) {
					persona = createPersona(rs);

				}

			} catch (SQLException e) {
				e.printStackTrace();
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return persona;
	}

	@Override
	public void save(Persona t) {

		String sql = "INSERT INTO socios(id_socio, name, heigh, age, location) VALUES (?, ?, ?, ?, ?)";

		try (PreparedStatement stmt = getConnection().prepareStatement(sql)) {
			stmt.setInt(1, t.getnSocio());
			stmt.setString(2, t.getName());
			stmt.setInt(3, t.getHeight());
			stmt.setInt(4, t.getAge());
			stmt.setString(5, t.getLocation());
			stmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	@Override
	public void remove(Integer id) {

		try (PreparedStatement stmt = getConnection().prepareStatement("Delete From socios Where id_socio = ?")) {
			stmt.setInt(1, id);
			stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	@Override
	public void update(Persona t) {
		
		String sql = "Update socios set name = ?, heigh = ?, age = ?, location = ? where id_socio = ?";

		try (PreparedStatement stmt = getConnection().prepareStatement(sql)) {
			stmt.setString(1, t.getName());
			stmt.setInt(2, t.getHeight());
			stmt.setInt(3, t.getAge());
			stmt.setString(4, t.getLocation());
			stmt.setInt(5, t.getnSocio());
			stmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

}
