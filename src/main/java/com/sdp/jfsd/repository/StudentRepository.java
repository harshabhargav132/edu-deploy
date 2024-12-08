package com.sdp.jfsd.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.sdp.jfsd.model.Student;

public interface StudentRepository extends JpaRepository<Student, Integer> {
	  @Query("SELECT s FROM Student s WHERE s.email = :email")
	    List<Student> findByEmail(@Param("email") String email);
	Student findByUsername(String username);
	List<Student> findByNameContaining(String query);
}
