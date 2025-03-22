package com.igap.adpro.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.igap.adpro.entity.State;
import com.igap.adpro.repository.StateRepository;
import com.igap.adpro.service.StateService;

@Service
public class StateServiceImpl implements StateService {
	
	@Autowired
	private StateRepository stateRepository;

//	create new state
	@Override
	public State saveState(State state) {
	
		return stateRepository.save(state);
	}

//	get all states 
	@Override
	public List<State> getAllState() 
	{
		
		return stateRepository.findAll();
	}

//	get state by ID
	@Override
	public State getStateById(int id) {
		
		return stateRepository.findById(id)
				.orElseThrow(()->new RuntimeException("state is not found with id is :"+ id));
	} 

//	update state by ID
	@Override
	public State updateState(int id, State stateDetails)
	{
		State existingState=stateRepository.findById(id)
				.orElseThrow(()->new RuntimeException("state is not found with id is:"+ id));
		
		 existingState.setName(stateDetails.getName());
		
		return stateRepository.save(existingState);
	}

//	delete state by id
	
	@Override
	public void deleteStateById(int id)
	{
		
   if(!stateRepository.existsById(id))
   {
	   throw new RuntimeException("state is not found with id is :"+id);
   }
     stateRepository.deleteById(id);
   
	}

}
