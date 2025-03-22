package com.igap.adpro.service;

import java.util.List;

import com.igap.adpro.entity.FinancialYear;

public interface FinancialYearService 

{
	
// create new FY
	
	FinancialYear saveFinancialYear(FinancialYear financialYear);
	
//	get all FYs
	
	List<FinancialYear> getAllFinancialYears();
	
//	get FY by ID
	
	FinancialYear getFinancialYearById(int id);
	
//	update FY by ID
	
	FinancialYear updateFinancialYear(int id,FinancialYear financialYearDetails);
	
//	delete FY by ID
	
	void deleteFinancialYearById(int id);
	
	
}
