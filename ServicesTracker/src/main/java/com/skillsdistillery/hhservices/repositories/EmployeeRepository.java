package com.skillsdistillery.hhservices.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.skillsdistillery.hhservices.entities.Employee;

public interface EmployeeRepository extends JpaRepository<Employee, Integer> {

}
