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

import com.igap.adpro.entity.FinancialYear;
import com.igap.adpro.service.FinancialYearService;

@RestController
@RequestMapping("/financialyears")
public class FinancialYearController {
	@Autowired

	private FinancialYearService financialYearService;

//	create new FY
	@PostMapping
	
	public ResponseEntity<FinancialYear> saveFinancialYear(@RequestBody FinancialYear financialYear)
	
	{
		FinancialYear savedFinancialYear= financialYearService.saveFinancialYear(financialYear);
		
		return new ResponseEntity<>(savedFinancialYear,HttpStatus.CREATED);
		
		
    }
	
//	get all FYs
	
	@GetMapping
	
	public ResponseEntity<List<FinancialYear>> getAllFinancialYears()
	{
		List<FinancialYear> financialYears=financialYearService.getAllFinancialYears();
		
		return new ResponseEntity<>(financialYears,HttpStatus.OK);
		
	}
	
//	get FY by ID
	
	@GetMapping("/{id}")
	
	public ResponseEntity<FinancialYear> getFinancialYearById(@PathVariable int id)
	{
		FinancialYear financialYear=financialYearService.getFinancialYearById(id);
		
		return new ResponseEntity<>(financialYear,HttpStatus.OK);
		
		
	}
	
//	update FY by ID
	
	@PutMapping("/{id}")
	
	public ResponseEntity<FinancialYear> updateFinancialYear(@PathVariable int id,@RequestBody FinancialYear financialYearDetails)
	{
		FinancialYear updatedFinancialYear=financialYearService.updateFinancialYear(id, financialYearDetails);
		
		return new ResponseEntity<>(updatedFinancialYear,HttpStatus.OK);
		
		
    }
	
//	delete FY by ID
	
	@DeleteMapping("/{id}")
	
	public ResponseEntity<String> deleteFinancialYearById(@PathVariable int id)
	{
		financialYearService.deleteFinancialYearById(id);
		
		
		return new ResponseEntity<>("finanacial year deleted successfully!",HttpStatus.OK);
		
		
		
	}
	
	
}
