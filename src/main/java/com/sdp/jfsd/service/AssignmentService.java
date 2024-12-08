package com.sdp.jfsd.service;

import com.sdp.jfsd.model.Assignment;

import java.util.List;

public interface AssignmentService {
    void createAssignment(Assignment assignment);
    List<Assignment> getAssignmentsByTeacher(Long teacherId);
    List<Assignment> getAssignmentsByStudent(int i);
    void uploadAssignment(Long assignmentId, String filePath);
}
