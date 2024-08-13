package com.distribuida.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.distribuida.entities.Vacacion;

@Repository
public class VacacionDAOImpl implements VacacionDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	@Override
	@Transactional
	////ACTUALIZACION
	public List<Vacacion> findAll(){
		//
		Session session = sessionFactory.getCurrentSession();
		return session.createQuery("from Vacacion",Vacacion.class).getResultList();
	}


	@Override
	@Transactional
	public Vacacion findOne(int id) {
		// TODO Auto-generated method stub
		Session session =sessionFactory.getCurrentSession();
		return session.get(Vacacion.class,id);
	}

	@Override
	@Transactional
	public void add(Vacacion vacacion) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();	// TODO Auto-generated method stub
		session.saveOrUpdate(vacacion);
	}

	@Override
	@Transactional
	public void up(Vacacion vacacion) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();	// TODO Auto-generated method stub
		session.saveOrUpdate(vacacion);
	}

	@Override
	@Transactional
	public void del(int id) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.getCurrentSession();
		session.delete(findOne(id));
	}

}
