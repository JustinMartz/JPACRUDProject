package com.skilldistillery.clients.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.clients.entities.Client;

@Service
@Transactional
public class ClientDAOImpl implements ClientDAO {
	@PersistenceContext
	private EntityManager em;

	@Override
	public Client findById(int id) {
		return em.find(Client.class, id);
	}

	@Override
	public Client create(Client client) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Client update(int id, Client client) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean destroyById(int id) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Client> findAll() {
		String query = "SELECT c FROM Client c";
		return em.createQuery(query, Client.class).getResultList();
	}

}
