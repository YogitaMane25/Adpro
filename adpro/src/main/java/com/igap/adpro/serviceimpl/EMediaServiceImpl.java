package com.igap.adpro.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.igap.adpro.entity.EMedia;
import com.igap.adpro.repository.EMediaRepository;
import com.igap.adpro.service.EMediaService;

@Service
public class EMediaServiceImpl implements EMediaService {

	@Autowired
	
	private EMediaRepository eMediaRepository;
	
//	create new emedia
	
	@Override
	public EMedia saveEMedia(EMedia eMedia) 
	{
		
		return eMediaRepository.save(eMedia) ;
	
	}

//	get all emedia
	@Override
	public List<EMedia> getAllEMedias() 
	{
		return eMediaRepository.findAll();
		
		
	}

//	get emedia by id
	
	@Override
	public EMedia getEMediaById(int id) 
	{
		return eMediaRepository.findById(id)
				.orElseThrow(()-> new RuntimeException("emedia not found by id :"+id));
		 
	}

//	update emedia by id
	@Override
	public EMedia updateEMedia(int id, EMedia eMediaDetails) 
	{
		EMedia existingEMedia= eMediaRepository.findById(id)
				.orElseThrow(()-> new RuntimeException("emedia not found by id :"+id));
		
		existingEMedia.setName(eMediaDetails.getName());
		existingEMedia.setContact(eMediaDetails.getContact());
		existingEMedia.setAddress(eMediaDetails.getAddress());
		existingEMedia.setState(eMediaDetails.getState());
		existingEMedia.setAgency(eMediaDetails.getAgency());
		existingEMedia.setGstno(eMediaDetails.getGstno());
	
		
		return eMediaRepository.save(existingEMedia);
	}

//	delete emedia by id
	
	@Override
	public void deleteEMediaById(int id) 
	{
		if(!eMediaRepository.existsById(id))
		{
			throw new  RuntimeException("emedia not found by id :"+id);
		}
         
		eMediaRepository.deleteById(id);
	}

}
