package com.example.noblestar.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.noblestar.model.PatientDetails;

public interface NobleRepo2 extends JpaRepository<PatientDetails, String>{

	PatientDetails findByMobile(String mobile);
	
}
