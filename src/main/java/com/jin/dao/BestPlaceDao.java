package com.jin.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jin.data.BestPlace;



@Repository
public class BestPlaceDao {

	@Autowired
	private SessionFactory sessionFactory;

	public List<BestPlace> view() {
		Session session = sessionFactory.openSession();
		List<BestPlace> list;
		try {
			list = session.createQuery("from BestPlace").list();
		} finally {
			session.close();
		}
		return list;
	}

	public void add(BestPlace bp) {
		Session session = sessionFactory.openSession();
		try {
			session.save(bp);
		} finally {
			session.close();
		}
	}

	public void delete(BestPlace bp) {
		Session session = sessionFactory.openSession();

		Query query = session.createQuery("delete BestPlace where id = :bpId");
		query.setParameter("bpId", bp.getId());

		int result = query.executeUpdate();

	}

}

