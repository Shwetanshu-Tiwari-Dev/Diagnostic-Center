package com.example.noblestar.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class OnlineAppointmentDetails {

	@Id
	private String mobile;
	private String name;
	private int age;
	private String address;
	private String date;
	private String note;
	
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getNote() {
		return note;
	}
	public void setNote(String note) {
		this.note = note;
	}
	@Override
	public String toString() {
		return "OnlineAppointmentDetails [mobile=" + mobile + ", name=" + name + ", age=" + age + ", address=" + address
				+ ", date=" + date + ", note=" + note + "]";
	}
	
	
		
}
