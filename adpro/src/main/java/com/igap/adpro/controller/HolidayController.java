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

import com.igap.adpro.entity.Holiday;
import com.igap.adpro.service.HolidayService;

@RestController
@RequestMapping("/holidays")
public class HolidayController {

	@Autowired
	private HolidayService holidayService;

//	create new holiday

	@PostMapping

	public ResponseEntity<Holiday> saveHoliday(@RequestBody Holiday holiday) {
		Holiday savedHoliday = holidayService.saveHoliday(holiday);

		return new ResponseEntity<>(savedHoliday, HttpStatus.CREATED);

	}

//	get all holidays

	@GetMapping

	public ResponseEntity<List<Holiday>> getAllHolidays() {
		List<Holiday> holidays = holidayService.getAllHolidays();

		return new ResponseEntity<>(holidays, HttpStatus.OK);

	}
//	get holidays by id
	
	@GetMapping("/{id}")
	
	public ResponseEntity<Holiday> getHolidayById(@PathVariable int id)
	{
		Holiday holiday=holidayService.getHolidayById(id);
		
		return  new ResponseEntity<>(holiday,HttpStatus.OK);
		
	}
	
//	update holiday by id
	
	@PutMapping("/{id}")
	
	public ResponseEntity<Holiday> updateHoliday(@PathVariable int id,@RequestBody Holiday holidayDetails)
	
	{
		Holiday updatedHoliday=holidayService.getHolidayById(id);
				
				return new ResponseEntity<>(updatedHoliday,HttpStatus.OK);
		
    }
	
//	delete holiday by Id
	
	@DeleteMapping("/{id}")
	
	public ResponseEntity<String> deleteHolidayById(@PathVariable int id)
	{
		holidayService.deleteHolidayById(id);
		
		return new ResponseEntity<>("holiday deleted successfully deleted!",HttpStatus.OK);
		
		
	}
	
	

}