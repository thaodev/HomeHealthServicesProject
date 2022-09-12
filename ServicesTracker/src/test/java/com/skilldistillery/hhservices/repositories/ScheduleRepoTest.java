package com.skilldistillery.hhservices.repositories;

import static org.junit.jupiter.api.Assertions.assertNotNull;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import com.skillsdistillery.hhservices.entities.Schedule;
import com.skillsdistillery.hhservices.repositories.ScheduleRepository;

@SpringBootTest
public class ScheduleRepoTest {
	
	@Autowired
	private ScheduleRepository repo; 
	
	@Test
	void test_schedule_repo() {
		List<Schedule> schedules = repo.findAll();
		assertNotNull(schedules);
	}

}
