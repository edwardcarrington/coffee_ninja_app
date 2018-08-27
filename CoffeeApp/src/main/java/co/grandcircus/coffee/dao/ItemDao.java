package co.grandcircus.coffee.dao;

import java.util.List;
import java.util.Set;
import java.util.TreeSet;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Repository;

import co.grandcircus.coffee.entity.Item;

@Repository // DAO
@Transactional
public class ItemDao {

	@PersistenceContext
	private EntityManager em;

	public List<Item> findAll() {
		return em.createQuery("FROM Item", Item.class).getResultList();
	}

	public Item findById(int id) {
		return em.find(Item.class, id);
	}

	public List<Item> findByKeyword(String keyword) {
		// HQL queries can have named parameters, such as :regex here.
		return em.createQuery("FROM Item WHERE LOWER(name) LIKE :regex", Item.class)
				.setParameter("regex", "%" + keyword.toLowerCase() + "%").getResultList();
	}

	public List<Item> findByCategory(String category) {
		return em.createQuery("FROM Item WHERE LOWER(category) = :category", Item.class)
				.setParameter("category", category.toLowerCase()).getResultList();
	}

	public void create(Item item) {
		em.persist(item);
	}

	public void update(Item item) {
		em.merge(item);
	}

	public void delete(int id) {
		// Deleting with Hibernate entity manager requires fetching a reference first.
		Item item = em.getReference(Item.class, id);
		em.remove(item);
	}

	public Set<String> findAllCategories() {
		// This query returns a list of Strings, so I give it String.class
		List<String> categoryList = em.createQuery("SELECT DISTINCT category FROM Item", String.class).getResultList();
		// Convert the List to a Set.
		return new TreeSet<>(categoryList);
	}
}
