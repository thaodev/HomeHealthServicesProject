package com.skillsdistillery.hhservices.entities;

import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Client {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String name;
	
	@Column(name="date_of_birth")
	private LocalDate dob;
	
	private String street;
	
	private String city;
	
	private String state;
	
	@Column(name="medicaid_eligible")
	private Boolean isMedicaidEligible;

	public Client() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public LocalDate getDob() {
		return dob;
	}

	public void setDob(LocalDate dob) {
		this.dob = dob;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public Boolean getIsMedicaidEligible() {
		return isMedicaidEligible;
	}

	public void setIsMedicaidEligible(Boolean isMedicaidEligible) {
		this.isMedicaidEligible = isMedicaidEligible;
	}

	@Override
	public String toString() {
		return "Client [id=" + id + ", name=" + name + ", dob=" + dob + ", street=" + street + ", city=" + city
				+ ", state=" + state + ", isMedicaidEligible=" + isMedicaidEligible + "]";
	}
	
	

}
