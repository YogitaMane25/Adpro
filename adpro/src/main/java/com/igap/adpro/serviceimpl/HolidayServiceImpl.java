package com.igap.adpro.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.igap.adpro.entity.Holiday;
import com.igap.adpro.repository.HolidayRepository;
import com.igap.adpro.service.HolidayService;
@Service
public class HolidayServiceImpl implements HolidayService {

	@Autowired
	
	private HolidayRepository holidayRepository;

	// create new holiday	
	
	@Override
	public Holiday saveHoliday(Holiday holiday) 
	{
		
		return holidayRepository.save(holiday);
	}

//	get all holidays
	
	@Override
	public List<Holiday> getAllHolidays() {
		
		return holidayRepository.findAll();
	}
// get holiday by id
	
	@Override
	public Holiday getHolidayById(int id) {
		
		return holidayRepository.findById(id)
				.orElseThrow(()->new RuntimeException("holiday not found by id"+id));
	}

//	update holiday by id
	
	@Override
	public Holiday updateHoliday(int id, Holiday holidayDetails) {
		
		Holiday existingHoliday= holidayRepository.findById(id)
				.orElseThrow(()->new RuntimeException("holiday not found by id"+id));
		
		existingHoliday.setAgency(holidayDetails.getAgency());
		existingHoliday.setHdate(holidayDetails.getHdate());
		existingHoliday.setReason(holidayDetails.getReason());
		existingHoliday.setEveryyear(holidayDetails.getEveryyear());
				
		return holidayRepository.save(existingHoliday);
	}

	@Override
	public void deleteHolidayById(int id) 
	{
		if(!holidayRepository.existsById(id))
		{
			throw new RuntimeException("holiday not found by id"+id);
			
		}
  
		holidayRepository.deleteById(id);
	}

}
