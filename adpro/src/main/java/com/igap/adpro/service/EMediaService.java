package com.igap.adpro.service;

import java.util.List;

import org.springframework.data.annotation.CreatedBy;

import com.igap.adpro.entity.EMedia;

public interface EMediaService
{
// create new emedia
	
	EMedia saveEMedia(EMedia eMedia);
	
//	get all emedias
	
	List<EMedia> getAllEMedias();
	
//	get emedia by id
	
	EMedia getEMediaById(int id);
	
//	update emedia by id
	
	EMedia updateEMedia(int id,EMedia eMediaDetails);
	
//	delete emedia by ID
	
	void deleteEMediaById(int id);
	
}
