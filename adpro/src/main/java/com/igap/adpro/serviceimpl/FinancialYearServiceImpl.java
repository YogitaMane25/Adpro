package com.igap.adpro.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.igap.adpro.entity.FinancialYear;
import com.igap.adpro.repository.FinancialYearRepository;
import com.igap.adpro.service.FinancialYearService;
@Service
public class FinancialYearServiceImpl implements FinancialYearService 
{
 @Autowired
 private FinancialYearRepository financialYearRepository;
 
// create new FY
 
	@Override
	public FinancialYear saveFinancialYear(FinancialYear financialYear) 
	{
		
		return financialYearRepository.save(financialYear);
	
	}

//	get all FYs
	
	@Override
	public List<FinancialYear> getAllFinancialYears()
	{
		
		return financialYearRepository.findAll();
	}

//	get FY by Id
	
	@Override
	public FinancialYear getFinancialYearById(int id)
	{
		
		return financialYearRepository.findById(id)
				.orElseThrow(()->new RuntimeException("finanacial year not found by id :"+id));
	}

//	update FY by ID
	
	@Override
	public FinancialYear updateFinancialYear(int id, FinancialYear financialYearDetails)
	{
		FinancialYear existingFinancialYear=financialYearRepository.findById(id)
				.orElseThrow(()->new RuntimeException("finanacial year not found by id :"+id));
		
		existingFinancialYear.setName(financialYearDetails.getName());
		existingFinancialYear.setStartdate(financialYearDetails.getStartdate());
		existingFinancialYear.setEnddate(financialYearDetails.getEnddate());
	
		
		return financialYearRepository.save(existingFinancialYear);
	}

//	delete FY by ID
	
	@Override
	public void deleteFinancialYearById(int id)
	{
		if(!financialYearRepository.existsById(id))
		{
			throw new RuntimeException("finanacial year not found by id :"+id);
		}
      
		financialYearRepository.deleteById(id);
	}

}
