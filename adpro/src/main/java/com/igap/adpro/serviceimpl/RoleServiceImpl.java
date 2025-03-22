package com.igap.adpro.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.igap.adpro.entity.Role;
import com.igap.adpro.repository.RoleRepository;
import com.igap.adpro.service.RoleService;

@Service

public class RoleServiceImpl implements RoleService {

	@Autowired
	private RoleRepository roleRepository;
	
//	create or save role 

	@Override
	public Role saveRole(Role role) {

		return roleRepository.save(role);
	}

//	get all role
	@Override
	public List<Role> getAllRoles() {

		return roleRepository.findAll();
	}
	
//	get role by ID

	@Override
	public Role getRoleById(int id) {

		return roleRepository.findById(id)
				.orElseThrow(() -> new RuntimeException("role is not found with id is :" + id));
	}
	
//	update role by ID

	@Override
	public Role updateRole(int id, Role roleDetails) {
//		find role by id 
		Role existingRole = roleRepository.findById(id)
				.orElseThrow(() -> new RuntimeException("role is not found with Id is :" + id));

//		update role by id
		existingRole.setName(roleDetails.getName());

//		save role to database and return updated role

		return roleRepository.save(existingRole);
	}

//	delete role by ID
	@Override
	public void deleteRoleById(int id) {
		if (!roleRepository.existsById(id)) {
			throw new RuntimeException("role is not found with ID is :" + id);
		}

		roleRepository.deleteById(id);

	}
}
