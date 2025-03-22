package com.igap.adpro.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.igap.adpro.entity.AdSchedule;

@Repository
public interface AdScheduleRepository extends JpaRepository<AdSchedule, Integer> {

}
