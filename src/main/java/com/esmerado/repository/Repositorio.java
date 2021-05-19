package com.esmerado.repository;

import java.util.List;

import com.esmerado.objects.Persona;

public interface Repositorio<T> {

	List<T> findAll();
	
	T findId(Integer id);
	
	void save(T t);
	
	void remove(Integer id);
	
	void update(Persona t);
}
