package com.example.noblestar.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class PatientDetails {
	
	
	private String name;
	@Id
	private String mobile;
	private int age;
	private String address;
	private String email;
	private String password;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	@Override
	public String toString() {
		return "PatientDetails [name=" + name + ", mobile=" + mobile + ", age=" + age + ", address=" + address
				+ ", email=" + email + ", password=" + password + "]";
	}
	

}
