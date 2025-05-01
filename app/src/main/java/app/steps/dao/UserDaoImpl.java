package app.steps.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import app.steps.model.User;

@Repository
public class UserDaoImpl implements UserDao{
	
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public User getUserById(int id) {
		return (User) sessionFactory.getCurrentSession().get(User.class, id);
	}

	@Override
	public void saveUser(User user) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		if (user != null) {
			try {
				session.save(user);
				tx.commit();
				session.close();
			} catch (Exception e) {
				tx.rollback();
				session.close();
				e.printStackTrace();
			}
		}
		
	}

	@Override
	public void editUser(User user) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		if (user != null) {
			try {
				session.update(user);
				tx.commit();
				session.close();
			} catch (Exception e) {
				tx.rollback();
				session.close();
				System.out.println(e);
			}
		}
		
	}

	@Override
	public List<User> getAllUsers() {
		return sessionFactory.getCurrentSession().createQuery("From User").list();
	}

	@Override
	public void deleteUser(int id) {
		Session session = sessionFactory.getCurrentSession();
        User user = (User) session.get(User.class, id);
        if (user != null) {
            session.delete(user);
        }
		
	}
	
	

}
