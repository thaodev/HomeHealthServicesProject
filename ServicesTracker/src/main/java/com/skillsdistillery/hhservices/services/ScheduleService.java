package com.skillsdistillery.hhservices.services;

import java.util.List;

import org.springframework.stereotype.Service;

import com.skillsdistillery.hhservices.entities.Schedule;


public interface ScheduleService {
	List<Schedule> scheduleList();

}
