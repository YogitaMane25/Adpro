package com.igap.adpro.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.igap.adpro.entity.Agency;

@Repository

public interface AgencyRepository extends JpaRepository<Agency, Integer> 
{

}
