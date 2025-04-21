package com.vgipl.empdata.service;

import org.springframework.stereotype.Service;

import com.vgipl.empdata.model.User;
import com.vgipl.empdata.repo.UserRepository;

@Service
public class UserServiceImpl implements UserService{
	
	private UserRepository userRepository;

	UserServiceImpl(UserRepository userRepository){
		this.userRepository = userRepository;
	}
	
	
	@Override
	public User addNewUser(User user) {
		user.setStatus("1");
		
		//TODO before save check if user is already registered or not
		User savedUser = userRepository.save(user);
		
		return savedUser;
	}
	
	

}
