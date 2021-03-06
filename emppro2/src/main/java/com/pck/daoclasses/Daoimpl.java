package com.pck.daoclasses;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
//import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.pck.bean.Contact;
import com.pck.bean.Signin;

@Repository
public class Daoimpl implements daointerface {
	// Transaction txn = null;

	@Autowired
	private SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Override
	public List<Contact> getAllEmployees() {
		return sessionFactory.getCurrentSession().createQuery("from Contact").list();
	}

	@Override
	public void deleteEmployee(int id) {
		Session session = sessionFactory.getCurrentSession();
		@SuppressWarnings("deprecation")
		Contact employee = session.get(Contact.class, new Integer(id));
		if (null != employee) {
			session.delete(employee);
		}

	}

	@Override
	public Contact updateEmployee(Contact employee) {

		Session session = sessionFactory.getCurrentSession();
		session.update(employee);
		return employee;
	}

	@Override
	public Contact getEmployee(int employeeid) {
		Session session = sessionFactory.getCurrentSession();
		return session.get(Contact.class, employeeid);

	}

	@Override
	public void addEmployee(Contact employee) {

		Session session = sessionFactory.getCurrentSession();
		session.save(employee);
	}

	@Override
	public void signin(Signin s) {
		// TODO Auto-generated method stub

	}

}
