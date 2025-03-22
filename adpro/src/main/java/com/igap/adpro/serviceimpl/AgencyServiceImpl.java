package com.igap.adpro.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.igap.adpro.entity.Agency;
import com.igap.adpro.repository.AgencyRepository;
import com.igap.adpro.service.AgencyService;

@Service
public class AgencyServiceImpl implements AgencyService {
	@Autowired
	private AgencyRepository agencyRepository;

// create new agency
	@Override
	public Agency saveAgency(Agency agency) {

		return agencyRepository.save(agency);
	}

//	get all agencies
	@Override
	public List<Agency> getAllAgencies() {

		return agencyRepository.findAll();
	}

//	get agency by id
	@Override
	public Agency getAgencyById(int id) {

		return agencyRepository.findById(id)
				.orElseThrow(() -> new RuntimeException("Agency not found with ID is : " + id));
	}

//	update agency by ID
	@Override
	public Agency updateAgency(int id, Agency agencyDetails) {
//		find agency in database
		Agency existAgency = agencyRepository.findById(id)
				.orElseThrow(() -> new RuntimeException("Agency not found with id is :" + id));

//		update existed agency

		existAgency.setName(agencyDetails.getName());
		existAgency.setAddress(agencyDetails.getAddress());
		existAgency.setCity(agencyDetails.getCity());
		existAgency.setState(agencyDetails.getState());
		existAgency.setGstNo(agencyDetails.getGstNo());
		existAgency.setOwner(agencyDetails.getOwner());
		existAgency.setContact(agencyDetails.getContact());
		existAgency.setEmail(agencyDetails.getEmail());
		existAgency.setLogopath(agencyDetails.getLogopath());
		existAgency.setSignpath(agencyDetails.getSignpath());
		existAgency.setStamppath(agencyDetails.getStamppath());
		existAgency.setPanno(agencyDetails.getPanno());
		existAgency.setBankname(agencyDetails.getBankname());
		existAgency.setIfsccode(agencyDetails.getIfsccode());
		existAgency.setAccountno(agencyDetails.getAccountno());
		existAgency.setWebsite(agencyDetails.getWebsite());
		existAgency.setInstruction(agencyDetails.getInstruction());
		existAgency.setStatus(agencyDetails.getStatus());

//        save to database and return

		return agencyRepository.save(existAgency);

	}

//	delete agency by ID
	@Override
	public void deleteAgencyById(int id) {
		if (!agencyRepository.existsById(id)) {
			throw new RuntimeException("Agency not found with id : " + id);
		} 
		agencyRepository.deleteById(id);
		}

	}


