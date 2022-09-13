package com.skillsdistillery.hhservices.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.skillsdistillery.hhservices.entities.Schedule;
import com.skillsdistillery.hhservices.repositories.ScheduleRepository;

@Service
public class ScheduleServiceImpl implements ScheduleService {

	@Autowired
	private ScheduleRepository scheduleRepo;
	
	@Override
	public List<Schedule> scheduleList() {
		List<Schedule> schedules = scheduleRepo.findAll();
		return schedules;
	}



}
