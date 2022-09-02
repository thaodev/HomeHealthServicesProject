package com.skillsdistillery.hhservices.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skillsdistillery.hhservices.entities.Discipline;
import com.skillsdistillery.hhservices.repositories.DisciplineRepository;

@Service
public class DisciplineServiceImpl implements DisciplineService {
	
	@Autowired
	private DisciplineRepository discRepo;
	
	@Override
	public List<Discipline> disciplineList() {
		
		return discRepo.findAll();
	}

}
