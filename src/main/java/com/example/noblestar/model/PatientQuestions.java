package com.example.noblestar.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class PatientQuestions {

	@Id
	private String mobile;
	private String email;
	private String questions;
	
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getQuestions() {
		return questions;
	}
	public void setQuestions(String questions) {
		this.questions = questions;
	}
	
	@Override
	public String toString() {
		return "PatientQuestions [mobile=" + mobile + ", email=" + email + ", questions=" + questions + "]";
	}
	
	
}
