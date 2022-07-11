package com.pj.pothole.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import com.pj.pothole.constant.Role;

import lombok.Getter;
import lombok.Setter;

@Entity
@Getter @Setter
public class User {
	@Id
	@GeneratedValue
	@Column(name="user_id")
	private Long id;
	
	@Column(nullable=false,unique=true)
	private String username;
	
	@Column(nullable=false)
	private String password;
	
	@Column(nullable=false)
	@Enumerated(EnumType.STRING)
	private Role role;

}
