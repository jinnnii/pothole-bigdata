package com.pj.pothole.config.auth;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.pj.pothole.entity.User;
import com.pj.pothole.repository.UserRepository;
@Service
public class PrincipalDetailsService implements UserDetailsService {
	@Autowired
	private UserRepository userRepository;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		User user = userRepository.findByUsername(username);
		System.out.println("user======" + user);
		if (user == null) {
			return null;
		}

		return new PrincipalDetails(user);
	}
}