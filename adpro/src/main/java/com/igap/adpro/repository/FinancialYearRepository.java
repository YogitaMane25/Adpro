package com.igap.adpro.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.igap.adpro.entity.FinancialYear;
@Repository
public interface FinancialYearRepository extends JpaRepository<FinancialYear, Integer> {

}
