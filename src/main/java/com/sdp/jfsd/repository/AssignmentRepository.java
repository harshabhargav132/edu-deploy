package com.sdp.jfsd.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.sdp.jfsd.model.Assignment;
import java.util.List;

public interface AssignmentRepository extends JpaRepository<Assignment, Long> {
    List<Assignment> findByTeacherId(Long teacherId);
    List<Assignment> findByStudentId(Long studentId);
}
