package com.sdp.jfsd.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sdp.jfsd.model.Student;
import com.sdp.jfsd.repository.StudentRepository;
import com.sdp.jfsd.service.StudentService;

@Service
public class StudentServiceImpl implements StudentService {

    @Autowired
    private StudentRepository studentRepository;

    @Override
    public Student authenticate(String username, String password) {
        Student student = studentRepository.findByUsername(username);
        if (student != null && student.getPassword().equals(password)) {
            return student;
        }
        return null;
    }

    @Override
    public Student registerStudent(Student student) {
        return studentRepository.save(student);
    }
    public List<Student> getAllStudents() {
        return studentRepository.findAll(); // Returns all students from the database
    }
    public void saveStudent(Student student) {
        studentRepository.save(student);
    }
    public Student findStudentById(int id) {
        return studentRepository.findById(id).orElse(null);
    }

    public void updateStudent(Student student) {
        studentRepository.save(student);
    }
    public void deleteStudentById(int id) {
        studentRepository.deleteById(id);
    }
    public List<Student> searchStudents(String query) {
        return studentRepository.findByNameContaining(query);
    }

}