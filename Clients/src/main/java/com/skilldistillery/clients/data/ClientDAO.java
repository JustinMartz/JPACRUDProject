package com.skilldistillery.clients.data;

import com.skilldistillery.clients.entities.Client;

public interface ClientDAO {
	Client findById(int id);
	Client create(Client client);
	Client update(int id, Client client);
	boolean destroyById(int id);
}
