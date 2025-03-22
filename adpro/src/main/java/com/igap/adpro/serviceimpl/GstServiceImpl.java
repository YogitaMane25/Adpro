package com.igap.adpro.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.igap.adpro.entity.Gst;
import com.igap.adpro.repository.GstRepository;
import com.igap.adpro.service.GstService;
@Service
public class GstServiceImpl implements GstService 
{
@Autowired
private GstRepository gstRepository;

//create new gst

	@Override
	public Gst saveGst(Gst gst) 
	{
		
		return gstRepository.save(gst);
	}

//	get all gsts
	@Override
	public List<Gst> getAllGsts() {
		
		return gstRepository.findAll();
	}

//	get gst by id
	
	@Override
	public Gst getGstById(int id) 
	{
		
		return gstRepository.findById(id)
				.orElseThrow(()->new RuntimeException("gst not found by id:"+id));
	}
	
//	update gst by id

	@Override
	public Gst updateGst(int id, Gst gstDetails) 
	{
		Gst existingGst=gstRepository.findById(id)
				.orElseThrow(()->new RuntimeException("gst not found by id:"+id));
				
		existingGst.setTitle(gstDetails.getTitle());
		existingGst.setAgency(gstDetails.getAgency());
		existingGst.setGstCode(gstDetails.getGstCode());
		existingGst.setIgstPercent(gstDetails.getIgstPercent());
		existingGst.setCgstPercent(gstDetails.getCgstPercent());
		existingGst.setSgstPercent(gstDetails.getSgstPercent());
				
				
		return gstRepository.save(existingGst);
	}

//	delete gst by id
	
	@Override
	public void deleteGstById(int id)
	{
		if(!gstRepository.existsById(id))
		{
			throw new RuntimeException("gst not found by id:"+id);
		}
       
		gstRepository.deleteById(id);
	}

}
