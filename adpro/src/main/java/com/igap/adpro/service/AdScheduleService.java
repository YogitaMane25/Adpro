package com.igap.adpro.service;

import java.util.List;

import com.igap.adpro.entity.AdSchedule;

public interface AdScheduleService
{
//	create new ADS
	
	AdSchedule saveAdSchedule(AdSchedule adSchedule);
	
//	get all ADSs
	
	List<AdSchedule> getAllAdSchedules();
	
//	get AdS by id
	
	AdSchedule getAdScheduleById(int id);
	
//	update ADS by id
	
	AdSchedule updateAdSchedule(int id,AdSchedule adScheduleDetails);
	
//	delete ADS by id
	
	void deleteAdScheduleById(int id);
	
	
	

}
