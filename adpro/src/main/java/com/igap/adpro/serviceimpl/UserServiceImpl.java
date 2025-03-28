package com.igap.adpro.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.igap.adpro.entity.User;

import com.igap.adpro.repository.UserRepository;
import com.igap.adpro.service.UserService;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserRepository userRepository;
	
//	created user

	@Override
	public User saveUser(User user) {

		return userRepository.save(user);

	}
	
//	read all user

	@Override
	public List<User> getAllUsers() {

		return userRepository.findAll();
	}
	
//	read user by ID

	@Override
	public User getUserById(int id) {

		return userRepository.findById(id).orElseThrow(() -> new RuntimeException("User not found with id : " + id));
	}
	
//	update user by ID

	@Override
	public User updateUser(int id, User userDetails) 
	{
		User existingUser = userRepository.findById(id)
				.orElseThrow(() -> new RuntimeException("User not found with id is :" + id));

		existingUser.setName(userDetails.getName());
		existingUser.setEmail(userDetails.getEmail());
		existingUser.setPassword(userDetails.getPassword());
		existingUser.setAgency(userDetails.getAgency());
		existingUser.setCreatedon(userDetails.getCreatedon());

		return userRepository.save(existingUser);
	}

//	delete user by ID
	@Override
	public void deleteUserById(int id)
	{
		if (!userRepository.existsById(id)) 
		{
			throw new RuntimeException("User not found with id is :" + id);

		}

		userRepository.deleteById(id);
	}

}
