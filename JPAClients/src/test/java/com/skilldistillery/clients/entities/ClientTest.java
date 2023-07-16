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
		assertEquals("Emma", client.getFirstName());
		assertEquals("Thompson", client.getLastName());
		assertEquals(1, client.getActive());
		assertEquals(1978, client.getDateOfBirth().getYear());
		assertEquals("13035092280", client.getPhoneNumber());
		assertEquals("Anxiety", client.getPresentingIssue());
		assertEquals("Generalized Anxiety", client.getDiagnosis());
		assertEquals(2022, client.getIntakeDate().getYear());
		assertEquals(9, client.getLastSession().getHour());
		assertEquals("Google", client.getReferralSource());
	}

}
