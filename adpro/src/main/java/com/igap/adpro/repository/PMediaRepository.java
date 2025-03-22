package com.igap.adpro.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.igap.adpro.entity.PMedia;

@Repository
public interface PMediaRepository extends JpaRepository<PMedia, Integer> {

}
