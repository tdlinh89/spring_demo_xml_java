package fpt.fa.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import fpt.fa.entity.Student;

public interface StudentRepository extends JpaRepository<Student, String>{
}
