package com.igap.adpro.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.igap.adpro.entity.AdSchedule;
import com.igap.adpro.repository.AdScheduleRepository;
import com.igap.adpro.service.AdScheduleService;
@Service
public class AdScheduleServiceImpl implements AdScheduleService 
{  
	@Autowired
	private AdScheduleRepository adScheduleRepository;
	
//	create new ADS

	@Override
	public AdSchedule saveAdSchedule(AdSchedule adSchedule) {
	
		return adScheduleRepository.save(adSchedule);
	}

//	get all ADSs
	
	@Override
	public List<AdSchedule> getAllAdSchedules() {
	
		return adScheduleRepository.findAll();
	}

//	get ADS by id
	
	@Override
	public AdSchedule getAdScheduleById(int id) {
	
		return adScheduleRepository.findById(id)
				.orElseThrow(()->new RuntimeException("adschedule not found by id :"+id));
	}

//	update ADS
	
	@Override
	public AdSchedule updateAdSchedule(int id, AdSchedule adScheduleDetails) {
	
		AdSchedule existingAdSchedule=adScheduleRepository.findById(id)
				.orElseThrow(()->new RuntimeException("adschedule not found by id :"+id));
				
			existingAdSchedule.setClient(adScheduleDetails.getClient());
			existingAdSchedule.setAgency(adScheduleDetails.getAgency());
			existingAdSchedule.setPMedia(adScheduleDetails.getPMedia());
			existingAdSchedule.setPMediaRo(adScheduleDetails.getPMediaRo());
			existingAdSchedule.setAdDate(adScheduleDetails.getAdDate());
			existingAdSchedule.setBeforeAgencyMessage(adScheduleDetails.getBeforeAgencyMessage());
			existingAdSchedule.setBeforeClientMessage(adScheduleDetails.getBeforeClientMessage());
			existingAdSchedule.setOnDateAgencyMessage(adScheduleDetails.getOnDateAgencyMessage());
			existingAdSchedule.setOnDateClientMessage(adScheduleDetails.getDescription());
			existingAdSchedule.setDescription(adScheduleDetails.getDescription());
			

		return adScheduleRepository.save(existingAdSchedule);
	}

//	delete ADS
	
	@Override
	public void deleteAdScheduleById(int id)
	{
     if(!adScheduleRepository.existsById(id))
     {
    	 throw new  RuntimeException("adschedule not found by id"+id);
     }
		adScheduleRepository.deleteById(id);
	}

}
