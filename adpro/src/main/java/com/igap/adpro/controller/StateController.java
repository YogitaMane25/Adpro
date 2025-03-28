package com.igap.adpro.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.igap.adpro.entity.State;
import com.igap.adpro.service.StateService;

@RestController
@RequestMapping("/states")
public class StateController 
{
	@Autowired
	private StateService stateService;
	
//create new state
	
	@PostMapping
	
	public ResponseEntity<State> saveState(@RequestBody State state)
	{
		State savedState= stateService.saveState(state);
		
		return new ResponseEntity<>(savedState,HttpStatus.CREATED);
	}
	
//	get all states
	
	@GetMapping
	
	public ResponseEntity<List<State>> getAllState()
	{
		List<State> states = stateService.getAllState();
		
		return new ResponseEntity<>(states,HttpStatus.OK);
		
	}
	
//	get states by id
	
	@GetMapping("/{id}")
	
	public ResponseEntity<State> getStateById(@PathVariable int id)
	{
		State state= stateService.getStateById(id);
		
		return new ResponseEntity<>(state,HttpStatus.OK);
		
	}
	
	
//	update state by ID
	
	@PutMapping("/{id}")
	
	public ResponseEntity<State> updateState(@PathVariable int id,   @RequestBody State  stateDetails)
	{
		
		State updateState= stateService.updateState( id,stateDetails);
		
		return new ResponseEntity<>(updateState,HttpStatus.OK);
		
	}
	
//	delete state by id
	
	@DeleteMapping("/{id}")
	
	public ResponseEntity<String> deleteStateById(@PathVariable int id)
	
	{
		stateService.deleteStateById(id);
		
		return new ResponseEntity<>("state deleted successfully!",HttpStatus.OK);
		
		
		
	}
	
}
