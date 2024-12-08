package com.sdp.jfsd.serviceimpl;

import com.sdp.jfsd.model.Assignment;
import com.sdp.jfsd.repository.AssignmentRepository;
import com.sdp.jfsd.service.AssignmentService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AssignmentServiceImpl implements AssignmentService {

    @Autowired
    private AssignmentRepository assignmentRepository;

    @Override
    public void createAssignment(Assignment assignment) {
        assignmentRepository.save(assignment);
    }

    @Override
    public List<Assignment> getAssignmentsByTeacher(Long teacherId) {
        return assignmentRepository.findByTeacherId(teacherId);
    }

    public List<Assignment> getAssignmentsByStudent(Long studentId) {
        return assignmentRepository.findByStudentId(studentId);
    }

    @Override
    public void uploadAssignment(Long assignmentId, String filePath) {
        Assignment assignment = assignmentRepository.findById(assignmentId).orElseThrow();
        assignment.setUploadedFile(filePath);
        assignmentRepository.save(assignment);
    }

	@Override
	public List<Assignment> getAssignmentsByStudent(int i) {
		// TODO Auto-generated method stub
		return null;
	}
}
