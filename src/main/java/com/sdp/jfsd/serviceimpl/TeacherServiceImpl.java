package com.sdp.jfsd.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sdp.jfsd.model.Teacher;
import com.sdp.jfsd.repository.TeacherRepository;
import com.sdp.jfsd.service.TeacherService;

@Service
public class TeacherServiceImpl implements TeacherService {

    @Autowired
    private TeacherRepository teacherRepository;

    @Override
    public Teacher authenticate(String username, String password) {
        Teacher teacher = teacherRepository.findByUsername(username);
        if (teacher != null && teacher.getPassword().equals(password)) {
            return teacher;
        }
        return null;
    }

    @Override
    public Teacher registerTeacher(Teacher teacher) {
        return teacherRepository.save(teacher);
    }

    public List<Teacher> getAllTeachers() {
        return teacherRepository.findAll(); // Returns all teachers from the database
    }

    public void saveTeacher(Teacher teacher) {
        teacherRepository.save(teacher);
    }

    // Change the method parameter to Long
    

    @Override
    public String addTeacher(Teacher teacher) {
        teacherRepository.save(teacher);
        return "Teacher added successfully!";
    }

    @Override
    public void updateTeacher(Teacher teacher) {
        teacherRepository.save(teacher); // Save the updated teacher object
    }

	@Override
	public Teacher findTeacherById(long id) {
		// TODO Auto-generated method stub
		return teacherRepository.findById(id).orElse(null);
	}

	
	public List<Teacher> searchTeachers(String query) {
	    return teacherRepository.findByNameContaining(query);
	}
}
