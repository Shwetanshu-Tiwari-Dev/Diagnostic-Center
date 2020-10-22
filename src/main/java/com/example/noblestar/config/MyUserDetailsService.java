package com.example.noblestar.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.example.noblestar.dao.NobleRepo2;
import com.example.noblestar.model.PatientDetails;

@Service
public class MyUserDetailsService implements UserDetailsService {

	@Autowired
	private NobleRepo2 repo2;
	 
	
	@Override
	public UserDetails loadUserByUsername(String mobile) throws UsernameNotFoundException {
		
		PatientDetails pd=repo2.findByMobile(mobile);
		
				
		if(pd==null)
		{
			throw new UsernameNotFoundException("User 404");
		}
		return new UserPrincipal(pd);
	}

}
