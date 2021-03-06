package com.pj.pothole.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.pj.pothole.entity.User;


public interface UserRepository extends JpaRepository<User, Long> {
	
	public User findByUsername(String username);

}
