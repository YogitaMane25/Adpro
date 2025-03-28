package com.igap.adpro.service;

import java.util.List;

import com.igap.adpro.entity.Role;


public interface RoleService 
{
//   Create new Role
	
	Role saveRole(Role role);
	
//	Get all roles
	
	List<Role> getAllRoles();
	
//	Get roles by ID
	
	Role getRoleById(int id);
	
//	Update Role by Id
	
	Role updateRole(int id, Role roleDetails);
	
//	delete Role By Id
	
	void deleteRoleById(int id);
	
}
