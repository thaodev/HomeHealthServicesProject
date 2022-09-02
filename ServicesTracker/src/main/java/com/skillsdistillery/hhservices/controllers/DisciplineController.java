package com.skillsdistillery.hhservices.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.skillsdistillery.hhservices.entities.Discipline;
import com.skillsdistillery.hhservices.services.DisciplineService;

@RestController
@RequestMapping("api")
public class DisciplineController {
	
	@Autowired
	private DisciplineService discServe;
	
	@GetMapping("disciplines")
	public List<Discipline> index(){
		return discServe.disciplineList();
	}

}
