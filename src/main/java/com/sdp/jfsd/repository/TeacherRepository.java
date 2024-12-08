package com.sdp.jfsd.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.sdp.jfsd.model.Teacher;

public interface TeacherRepository extends JpaRepository<Teacher, Long> {
    Teacher findByUsername(String username);
    @Query("SELECT t FROM Teacher t WHERE t.email = :email")
    List<Teacher> findByEmail(@Param("email") String email);
	List<Teacher> findByNameContaining(String query);
}