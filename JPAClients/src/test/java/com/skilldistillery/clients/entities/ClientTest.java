package com.skilldistillery.clients.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class ClientTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Client client;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPAClients");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		client = em.find(Client.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		client = null;
	}

	@Test
	void test_Client_entity_mappings() {
		assertNotNull(client);
		assertEquals("Justin", client.getFirstName());
	}

}
