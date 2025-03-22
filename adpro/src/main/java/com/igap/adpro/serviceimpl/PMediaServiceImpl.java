package com.igap.adpro.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.igap.adpro.entity.PMedia;
import com.igap.adpro.repository.PMediaRepository;
import com.igap.adpro.service.PMediaService;

@Service
public class PMediaServiceImpl implements PMediaService {

	@Autowired
	private PMediaRepository pMediaRepository;
	
//	create new pmedia
	@Override
	public PMedia savePMedia(PMedia pMedia) 
	{
	
		return pMediaRepository.save(pMedia);
	}

//	get all pmedia
	
	@Override
	public List<PMedia> getAllPMedias() 
	{
		
		return pMediaRepository.findAll();
	}

//	get pmedia by id
	
	@Override
	public PMedia getPMediaById(int id) 
	{
		return pMediaRepository.findById(id)
				.orElseThrow(()->new RuntimeException("PMedia not found by id:"+id));
	}

//	update pmedia by id
	
	@Override
	public PMedia updatePMedia(int id, PMedia pMediaDetails) {
		
		PMedia existingPMedia=pMediaRepository.findById(id)
				.orElseThrow(()-> new RuntimeException("PMedia not found by id :"+id));
		
		existingPMedia.setName(pMediaDetails.getName());
		existingPMedia.setContact(pMediaDetails.getContact());
		existingPMedia.setAddress(pMediaDetails.getAddress());
		existingPMedia.setState(pMediaDetails.getState());
		existingPMedia.setAgency(pMediaDetails.getAgency());
		
		
		return pMediaRepository.save(existingPMedia);
	}

//	delete pmedia by id
	
	@Override
	public void deletePMediaById(int id) {
		if(!pMediaRepository.existsById(id))
		{
			throw new RuntimeException("pmedia not found by id"+id);
		}
       
		pMediaRepository.deleteById(id);
	}

}
