package com.sdp.jfsd.service;

import java.util.List;

import com.sdp.jfsd.model.Student;

public interface StudentService {
    Student authenticate(String username, String password);
    Student registerStudent(Student student);
    public List<Student> getAllStudents();
    public void saveStudent(Student student);
    public Student findStudentById(int id);
    public void updateStudent(Student student);
    public void deleteStudentById(int id);
    public List<Student> searchStudents(String query);
    
}