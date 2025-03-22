package com.igap.adpro.service;

import java.util.List;

import com.igap.adpro.entity.Gst;

public interface GstService 
{
// create new gst
	
	Gst saveGst(Gst gst);
	
//	get all gsts
	
	List<Gst> getAllGsts();
	
//	get gst by ID
	
	Gst getGstById(int id);
	
//	update gst by id
	
	Gst updateGst(int id,Gst gstDetails);
	
//	delete Gst by ID
	
	void deleteGstById(int id);
	
	
	
	
}
