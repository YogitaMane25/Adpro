package com.igap.adpro.service;

import java.util.List;

import com.igap.adpro.entity.Holiday;

public interface HolidayService 
{
// create new holiday
	
	Holiday saveHoliday(Holiday holiday);
	
//	get all holidays
	
	List<Holiday> getAllHolidays();
	
//	get holiday by id
	
	Holiday getHolidayById(int id);
	
//	update holiday by id
	
	Holiday updateHoliday(int id,Holiday holiday);
	
//	delete holiday by id
	
	void deleteHolidayById(int id);
	
}
