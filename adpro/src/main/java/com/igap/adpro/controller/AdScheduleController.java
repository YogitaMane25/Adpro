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

import com.igap.adpro.entity.AdSchedule;
import com.igap.adpro.service.AdScheduleService;

@RestController
@RequestMapping("/adschedules")
public class AdScheduleController
{
	@Autowired
	
	private AdScheduleService adScheduleService;
	
//	create new ADS
	
	@PostMapping
	
	public ResponseEntity<AdSchedule> saveAdSchedule(@RequestBody AdSchedule adSchedule)
	{
		AdSchedule savedAdSchedule= adScheduleService.saveAdSchedule(adSchedule);
		
		return new ResponseEntity<>(savedAdSchedule,HttpStatus.CREATED);
	}
	 
	
//	get all ADS
	
	@GetMapping
	
	public ResponseEntity<List<AdSchedule>> getAllAdSchedule()
	{
		List<AdSchedule> adSchedules=adScheduleService.getAllAdSchedules();
		
		return new ResponseEntity<>(adSchedules,HttpStatus.OK);
	}
	
//	get ADS by id
	
	@GetMapping("/{id}")
	
	public ResponseEntity<AdSchedule> getAdScheduleById(@PathVariable int id)
	{
		AdSchedule adSchedule=adScheduleService.getAdScheduleById(id);
		
		return new ResponseEntity<>(adSchedule,HttpStatus.OK);
		
		
		
	}
	
//	update ADS by id
	
	@PutMapping("/{id}")
	
	public ResponseEntity<AdSchedule> updateAdSchedule(@PathVariable int id,@RequestBody AdSchedule adScheduleDetails)
	{
		AdSchedule updatedAdSchedule=adScheduleService.updateAdSchedule(id, adScheduleDetails);
		
		return new ResponseEntity<>(updatedAdSchedule,HttpStatus.OK);
		
    }
	
	
//	delete ADS
	
	@DeleteMapping("/{id}")
	
	public ResponseEntity<String> deleteAdShedule(@PathVariable int id)
	
	{
		adScheduleService.deleteAdScheduleById(id);
		
		return new ResponseEntity<>("adschedule deleted successfully!",HttpStatus.OK);
		
   }
	
	
	
	
	
	
	
	
	
	
	
	
	
	

}
