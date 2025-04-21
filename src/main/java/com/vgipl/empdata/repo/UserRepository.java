package com.vgipl.empdata.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.vgipl.empdata.model.User;

@Repository
public interface UserRepository extends JpaRepository<User, Integer>{
	
}
