package com.skillsdistillery.hhservices.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.skillsdistillery.hhservices.entities.Schedule;
import com.skillsdistillery.hhservices.repositories.ScheduleRepository;

public class ScheduleServiceImpl implements ScheduleService {

	@Autowired
	private ScheduleRepository scheduleRepo;
	
	@Override
	public List<Schedule> scheduleList() {
		List<Schedule> schedules = scheduleRepo.findAll();
		return schedules;
	}



}
