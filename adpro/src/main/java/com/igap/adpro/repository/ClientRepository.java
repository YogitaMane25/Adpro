package com.igap.adpro.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.igap.adpro.entity.Client;
@Repository
public interface ClientRepository extends JpaRepository<Client, Integer> {

}
