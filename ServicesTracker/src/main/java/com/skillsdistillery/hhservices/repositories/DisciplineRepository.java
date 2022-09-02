package com.skillsdistillery.hhservices.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.skillsdistillery.hhservices.entities.Discipline;

public interface DisciplineRepository extends JpaRepository<Discipline, Integer> {

}
