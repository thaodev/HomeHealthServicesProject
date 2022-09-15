package com.skillsdistillery.hhservices.repositories;

import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.skillsdistillery.hhservices.entities.Employee;
import com.skillsdistillery.hhservices.repositories.EmployeeRepository;

@SpringBootTest
public class EmployeeRepoTest {
	
	@Autowired
	private EmployeeRepository repo; 
	
	@Test
	void test_employee_repo() {
		List<Employee> employees = repo.findAll();
		assertNotNull(employees);
	}

}
