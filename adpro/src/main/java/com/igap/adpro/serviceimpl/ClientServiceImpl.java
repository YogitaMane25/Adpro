package com.igap.adpro.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.annotation.CreatedBy;
import org.springframework.stereotype.Service;

import com.igap.adpro.entity.Client;
import com.igap.adpro.repository.ClientRepository;
import com.igap.adpro.service.ClientService;

@Service
public class ClientServiceImpl implements ClientService
{
@Autowired

private ClientRepository clientRepository;

//Created new client

	@Override
	public Client saveClient(Client client) 
	{
		
		return clientRepository.save(client);
	}

//	get all clients
	
	@Override
	public List<Client> getAllClients() {
		
		return clientRepository.findAll();
	}

//	get client by ID
	
	@Override
	public Client getClientById(int id) 
	{
		
		return clientRepository.findById(id)
				.orElseThrow(()->new RuntimeException("client not found by ID is :"+id));
	}
	
//	update client by ID

	@Override
	public Client updateClient(int id, Client clientDetails)
	{
//		find id in database
	  Client existingClient=clientRepository.findById(id)
			  .orElseThrow(()-> new RuntimeException("client not found by id is :"+id));
	  
//	  update client
	  
	 existingClient.setName(clientDetails.getName());
	 existingClient.setAddress(clientDetails.getAddress());
	 existingClient.setContact(clientDetails.getContact());
	 existingClient.setState(clientDetails.getState());
	 existingClient.setAgency(clientDetails.getAgency());
	 existingClient.setGstno(clientDetails.getGstno());
	 
//	 save to database and return client object
	 return clientRepository.save(existingClient);
	}

//	delete client by ID
	
	@Override
	public void deleteClientById(int id) {
		if(!clientRepository.existsById(id))
		{
			throw new RuntimeException("client not found by id"+id);
		}
       
		clientRepository.deleteById(id);
	}

}
