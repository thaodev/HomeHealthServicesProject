package com.skillsdistillery.hhservices.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.skillsdistillery.hhservices.entities.Schedule;
import com.skillsdistillery.hhservices.services.ScheduleService;

@RestController
@RequestMapping("api")
public class ScheduleController {
	
	@Autowired
	private ScheduleService schServ;
	
	@GetMapping("schedules")
	public List<Schedule> index(){
		return schServ.scheduleList();
	}

}
