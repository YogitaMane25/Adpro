package com.igap.adpro.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.igap.adpro.entity.State;
@Repository
public interface StateRepository extends JpaRepository<State, Integer> {

}
