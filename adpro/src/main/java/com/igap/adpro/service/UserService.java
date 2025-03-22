package com.igap.adpro.service;

import java.util.List;

import com.igap.adpro.entity.User;

public interface UserService 
{

	User saveUser(User user);
	
	List<User>getAllUsers();
	
	User getUserById(int id);
	
	User updateUser(int id,User userDetails);
	
	void deleteUserById(int id);

	
	
}