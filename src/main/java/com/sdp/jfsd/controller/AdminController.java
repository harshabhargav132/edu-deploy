package com.sdp.jfsd.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sdp.jfsd.model.Admin;
import com.sdp.jfsd.model.ContactMessage;
import com.sdp.jfsd.model.Student;
import com.sdp.jfsd.model.Teacher;
import com.sdp.jfsd.service.AdminService;
import com.sdp.jfsd.service.ContactService;
import com.sdp.jfsd.service.StudentService;
import com.sdp.jfsd.service.TeacherService;

@Controller
public class AdminController {

    @Autowired
    private AdminService adminService;

    @Autowired
    private ContactService contactService;

    @Autowired
    private StudentService studentService;

    @Autowired
    private TeacherService teacherService;
    @GetMapping("/admin/mainhome")
    public String mainhome() {
        return "mainhome"; // Refers to WEB-INF/views/admin-login.jsp
    }
    @GetMapping("/admin/admin-login")
    public String adminloginpage() {
        return "admin-login"; // Refers to WEB-INF/views/admin-login.jsp
    }
    @GetMapping("/admin/login")
    public String loginPage() {
        return "admin-login"; // Refers to WEB-INF/views/admin-login.jsp
    }

    @PostMapping("/admin/login")
    public String login(@RequestParam String username, @RequestParam String password, Model model) {
        if (username.isBlank() || password.isBlank()) {
            model.addAttribute("error", "Username and Password must not be empty");
            return "admin-login";
        }

        Admin admin = adminService.authenticate(username, password);
        if (admin != null) {
            model.addAttribute("admin", admin);
            return "admin-dashboard"; // Refers to WEB-INF/views/admin-dashboard.jsp
        } else {
            model.addAttribute("error", "Invalid credentials");
            return "admin-login";
        }
    }

    @GetMapping("/admin/messages")
    public String viewMessages(Model model) {
        List<ContactMessage> messages = contactService.getAllMessages();
        model.addAttribute("messages", messages);
        return "admin-view-messages"; // Refers to WEB-INF/views/admin-view-messages.jsp
    }

    @GetMapping("/admin/teachers")
    public String viewTeachers(Model model) {
        List<Teacher> teachers = teacherService.getAllTeachers();
        model.addAttribute("teachers", teachers);
        return "admin-view-teachers"; // Refers to WEB-INF/views/admin-view-teachers.jsp
    }

    @GetMapping("/admin/students")
    public String viewStudents(Model model) {
        List<Student> students = studentService.getAllStudents();
        model.addAttribute("students", students);
        return "admin-view-students"; // Refers to WEB-INF/views/admin-view-students.jsp
    }

    @GetMapping("/admin/addteacher")
    public String showAddTeacherPage(Model model) {
        model.addAttribute("teacher", new Teacher()); // Bind empty Teacher object for the form
        return "addteacher"; // Returns the add teacher form (addteacher.jsp)
    }

    @PostMapping("/admin/insertteacher")
    public String insertTeacher(@ModelAttribute Teacher teacher, Model model) {
        try {
            String message = teacherService.addTeacher(teacher);
            model.addAttribute("success", message); // Show success message
            return "addteachersuccess"; // A success page showing teacher added (addteachersuccess.jsp)
        } catch (Exception e) {
            model.addAttribute("error", "Failed to add teacher: " + e.getMessage());
            return "addteacher"; // Redirect to form with error
        }
    }
  
}

