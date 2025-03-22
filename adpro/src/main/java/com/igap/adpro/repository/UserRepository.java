package com.igap.adpro.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.igap.adpro.entity.User;
@Repository
public interface UserRepository extends JpaRepository<User, Integer> 
{

}
