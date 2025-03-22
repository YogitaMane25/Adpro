package com.igap.adpro.service;

import java.util.List;

import com.igap.adpro.entity.Client;

public interface ClientService 
{
//  create client
	
	Client saveClient(Client client);
	
//	get all clients
	
	List<Client> getAllClients();
	
//	get client by ID
	
	Client getClientById(int id);
	
//	update client
	
	Client updateClient(int id,Client clientDetails);
	
//	delete client by ID
	
	void deleteClientById(int id);
	
	
}
