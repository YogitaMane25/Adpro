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

import com.igap.adpro.entity.Agency;
import com.igap.adpro.service.AgencyService;

@RestController
@RequestMapping("/agencies")
public class AgencyController 
{
 @Autowired
 private AgencyService agencyService;
 
// save agency
 
 @PostMapping
 
 public ResponseEntity<Agency> saveagencyEntity(@RequestBody Agency agency)
 {
	 
	 Agency savedAgency=agencyService.saveAgency(agency);
	 return new ResponseEntity<>(savedAgency,HttpStatus.OK);
 }
 
// get all agency
 
 @GetMapping
 
 public ResponseEntity<List<Agency>> getAllAgencies()
 {
	 List<Agency> agencies=agencyService.getAllAgencies();
	 return new ResponseEntity<>(agencies,HttpStatus.OK);
 }
 
// get agency by id
 @GetMapping("/{id}")
 
 
	public ResponseEntity<Agency> getAgencyById(@PathVariable int id)
	{
		Agency agency=agencyService.getAgencyById(id);
		return new ResponseEntity<>(agency,HttpStatus.OK);
	}
 
// update agency by id
 
 @PutMapping("/{id}")
 
 public ResponseEntity<Agency> updateAgency(@PathVariable int id,@RequestBody Agency agencyDetails)
 {
	 Agency updatedAgency=agencyService.updateAgency(id, agencyDetails);
	 
	 return new ResponseEntity<>(updatedAgency,HttpStatus.CREATED);
			 
	 
 }
 
 
// delete agnecy by id
 
 @DeleteMapping("/{id}")
 
 public ResponseEntity<String> deleteAgencyById(@PathVariable int id)
 {
	 agencyService.deleteAgencyById(id);
	 
	return new ResponseEntity<>("Agency deleted successfully!",HttpStatus.OK);
	 
 }
 
	 
 }

