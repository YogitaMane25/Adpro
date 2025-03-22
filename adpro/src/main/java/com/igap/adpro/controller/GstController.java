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

import com.igap.adpro.entity.Gst;
import com.igap.adpro.service.GstService;

@RestController
@RequestMapping("/gsts")
public class GstController {
	@Autowired

	private GstService gstService;

// create new gst

	@PostMapping

	public ResponseEntity<Gst> saveGst(@RequestBody Gst gst) {
		Gst savedGst = gstService.saveGst(gst);

		return new ResponseEntity<>(savedGst, HttpStatus.CREATED);

	}
	
//	get all gsts
	
	@GetMapping
	
	public ResponseEntity<List<Gst>> getAllGsts()
	{
		List<Gst> gsts= gstService.getAllGsts();
		
		return new ResponseEntity<>(gsts,HttpStatus.OK);
	}
	
//	get gst by id
	@GetMapping("/{id}")
	
	public ResponseEntity<Gst> getGstById(@PathVariable int id)
	{
		Gst gst=gstService.getGstById(id);
		
		 return new ResponseEntity<>(gst,HttpStatus.OK);
	}
	
//	update gst by id
	
	@PutMapping("/{id}")
	
	public ResponseEntity<Gst> updateGst(@PathVariable int id,@RequestBody Gst gstDetails)
	{
		Gst updatedGst =gstService.updateGst(id, gstDetails);
		
		return new ResponseEntity<>(updatedGst,HttpStatus.OK);
		
		
	}
	
//	delete gst by Id
	
	@DeleteMapping("/{id}")
	
	public ResponseEntity<String> deleteGstById(@PathVariable int id)
	{
		gstService.deleteGstById(id);
		
		return new ResponseEntity<>("gst deleted successfully!",HttpStatus.OK);
		
	}
	
	
}
