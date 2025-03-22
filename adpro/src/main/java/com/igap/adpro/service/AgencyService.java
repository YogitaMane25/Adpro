package com.igap.adpro.service;

import com.igap.adpro.entity.Agency;
import java.util.List;

public interface AgencyService {

//	create new agency
	
	Agency saveAgency(Agency agency);
	
	
//	get all agencies

	List<Agency> getAllAgencies();

//	get agency by ID
	Agency getAgencyById(int id);
	
//	update agency by ID
	
	Agency updateAgency(int id ,Agency agencyDetails);

//	delete agency by ID
	void deleteAgencyById(int id);
}
