package com.skillsdistillery.hhservices.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skillsdistillery.hhservices.entities.Employee;
import com.skillsdistillery.hhservices.repositories.EmployeeRepository;

@Service
public class EmployeeServiceImpl implements EmployeeService {
	@Autowired
	private EmployeeRepository repo;
	
	@Override
	public List<Employee> employeeList() {
		return repo.findAll();
	}

}
