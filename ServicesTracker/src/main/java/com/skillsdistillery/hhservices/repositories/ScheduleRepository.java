package com.skillsdistillery.hhservices.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.skillsdistillery.hhservices.entities.Schedule;

public interface ScheduleRepository extends JpaRepository<Schedule, Integer> {

}
