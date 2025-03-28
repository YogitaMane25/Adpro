package com.igap.adpro.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.igap.adpro.entity.User;
import com.igap.adpro.service.UserService;

@RestController
@RequestMapping("/users")
public class UserController {
	@Autowired

	private UserService userService;

//  save a new user

	@PostMapping

	public ResponseEntity<User> saveUserEntity(@RequestBody User user) {
		User savedUser = userService.saveUser(user);

		return new ResponseEntity<>(savedUser, HttpStatus.CREATED);
	}

//  get all users

	@GetMapping

	public ResponseEntity<List<User>> getAllUsers() {

		List<User> users = userService.getAllUsers();

		return new ResponseEntity<>(users, HttpStatus.OK);

	}

//  get users by ID

	@GetMapping("/{id}")

	public ResponseEntity<User> getUserById(@PathVariable int id) {

		User user = userService.getUserById(id);

		return new ResponseEntity<>(user, HttpStatus.OK);

	}

//  update user By ID

	@PutMapping("/{id}")

	public ResponseEntity<User> updateUser(@PathVariable int id, @RequestBody User userDetails) {

		User updatedUser = userService.updateUser(id, userDetails);

		return new ResponseEntity<>(updatedUser, HttpStatus.CREATED);

	}

//  delete  user by ID

	@DeleteMapping("/{id}")

	public ResponseEntity<String> deleteUserById(@PathVariable int id) {
		userService.deleteUserById(id);

		return new ResponseEntity<>("user deleted successfully!", HttpStatus.OK);

	}

}
