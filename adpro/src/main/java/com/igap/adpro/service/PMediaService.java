package com.igap.adpro.service;

import java.util.List;

import com.igap.adpro.entity.PMedia;

public interface PMediaService
{
//  create new pmedia
	
	PMedia savePMedia(PMedia pMedia);
	
//	get all pmedias
	
	List<PMedia> getAllPMedias();
	
//	get pmedia by ID
	
	PMedia getPMediaById(int id);
	
//	update pmedia by id
	
	PMedia updatePMedia(int id,PMedia pMediaDetails);
	
//	delete pmedia by id
	
	void deletePMediaById(int id);
	
	
}
