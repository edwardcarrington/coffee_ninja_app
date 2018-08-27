package co.grandcircus.coffee.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import co.grandcircus.coffee.entity.User;

@Repository // DAO
@Transactional
public class UserDao {

	@PersistenceContext
	private EntityManager em;

	public List<User> findAll() {
		return em.createQuery("FROM User", User.class).getResultList(); // query returns list
	}

	public User findById(int id) {
		return em.find(User.class, id); // only one result
	}

	public void create(User user) {
		em.persist(user);

	}

	public void delete(int id) {
		User user = em.getReference(User.class, id);
		em.remove(user);
	}

}
