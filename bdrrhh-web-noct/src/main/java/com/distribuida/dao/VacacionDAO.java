package com.distribuida.dao;

import java.util.List;

import org.springframework.stereotype.Repository;
import com.distribuida.entities.Vacacion;

@Repository
public interface VacacionDAO {

	//CRUD básico
	
			public List<Vacacion> findAll();
			
			public Vacacion findOne(int id);
			
			public void add(Vacacion vacacion);
			
			public void up(Vacacion vacacion);

			public void del(int id);
			
			//CRUD avanzado
	
}
