package com.igap.adpro.controller;

import java.util.List;

import org.apache.catalina.connector.Response;
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

import com.igap.adpro.entity.Role;
import com.igap.adpro.service.RoleService;

@RestController
@RequestMapping("/roles")
public class RoleController 
{
  @Autowired
  private RoleService roleService;
  
//  create or save role
  
  @PostMapping
  
  public ResponseEntity<Role> saveRole(@RequestBody Role role)
  {
	  Role savedRole= roleService.saveRole(role);
			  
	return new ResponseEntity<>(savedRole,HttpStatus.CREATED);
	  
  }
  
//  get all role
  
  @GetMapping
  
  public ResponseEntity<List<Role>> getAllRoles()
  
  {
	  List<Role> users=roleService.getAllRoles();
	  
	  return new ResponseEntity<>(users,HttpStatus.OK);
  }
  
//  get role by ID
  
  @GetMapping("/{id}")
  
  public ResponseEntity<Role> getRoleById(@PathVariable int id)
  {
	  Role  role=roleService.getRoleById(id);
			  
			  return new ResponseEntity<>(role,HttpStatus.OK);
	  
  }
  
//  update role by ID
  
  @PutMapping("/{id}")
  
  public ResponseEntity<Role> updateRole(@PathVariable int id,@RequestBody Role roleDetails)
  {
	  Role updateRole=roleService.updateRole(id, roleDetails);
	  
	  return new ResponseEntity<>(updateRole,HttpStatus.OK);
	  
	  
  }
  
//  delete Role By Id
  
  @DeleteMapping("/{id}")
  
  public ResponseEntity<String> deleteRoleById(@PathVariable int id)
  {
	  roleService.deleteRoleById(id);
	  
	return new ResponseEntity<>("Role deleted Successfully!",HttpStatus.OK);
	  
  }
  
  
  
}


