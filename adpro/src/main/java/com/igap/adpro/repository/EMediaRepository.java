package com.igap.adpro.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.igap.adpro.entity.EMedia;

@Repository
public interface EMediaRepository extends JpaRepository<EMedia, Integer> {

}
