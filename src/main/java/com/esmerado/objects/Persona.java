package com.esmerado.objects;

/**
 * Clase Persona con la que se van a generar los socios.
 * 
 * @author esmer
 *
 */
public class Persona {

	private int nSocio;
	private String name;
	private int height;
	private int age;
	private String location;

	public Persona(int nSocio, String name, int height, int age, String location) {
		this.nSocio = nSocio;
		this.name = name;
		this.height = height;
		this.age = age;
		this.location = location;
	}

	public int getnSocio() {
		return nSocio;
	}

	public void setnSocio(int nSocio) {
		this.nSocio = nSocio;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getHeight() {
		return height;
	}

	public void setHeight(int height) {
		this.height = height;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	@Override
	public String toString() {
		return "Socio -> nSocio=" + nSocio + ", name=" + name + ", height=" + height + ", age=" + age + ", location=" + location;
	}

}
