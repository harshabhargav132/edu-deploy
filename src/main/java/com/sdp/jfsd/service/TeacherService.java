package com.sdp.jfsd.service;

import java.util.List;

import com.sdp.jfsd.model.Teacher;

public interface TeacherService {
    Teacher authenticate(String username, String password);
    Teacher registerTeacher(Teacher teacher);
    List<Teacher> getAllTeachers() ;
    public void saveTeacher(Teacher teacher);
       
    public Teacher findTeacherById(long id);
    String addTeacher(Teacher teacher);
	void updateTeacher(Teacher teacher);
	public List<Teacher> searchTeachers(String query);
}
