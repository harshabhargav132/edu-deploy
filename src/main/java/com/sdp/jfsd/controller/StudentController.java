package com.sdp.jfsd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.sdp.jfsd.model.Student;
import com.sdp.jfsd.service.AnnouncementService;
import com.sdp.jfsd.service.AssignmentService;
import com.sdp.jfsd.service.StudentService;

import jakarta.servlet.http.HttpSession;

@Controller
public class StudentController {

    @Autowired
    private StudentService studentService;
    @GetMapping("/student/mainhome")
    public String mainhome() {
        return "mainhome"; // Refers to WEB-INF/views/admin-login.jsp
    }
    @GetMapping("/student/student-dashboard")
    public String dashboard() {
        return "student-dashboard"; // Refers to WEB-INF/views/admin-login.jsp
    }
    @GetMapping("/student/student-login")
    public String studentloginpage() {
        return "student-login"; // Refers to WEB-INF/views/admin-login.jsp
    }
    @GetMapping("/student/login")
    public String loginPage() {
        return "student-login"; // Refers to WEB-INF/views/student-login.jsp
    }

    @PostMapping("/student/login")
    public String login(@RequestParam String username, @RequestParam String password, Model model) {
        Student student = studentService.authenticate(username, password);
        if (student != null) {
            model.addAttribute("student", student);
            return "student-dashboard"; // Refers to WEB-INF/views/student-dashboard.jsp
        } else {
            model.addAttribute("error", "Invalid credentials");
            return "student-login";
        }
    }

    @GetMapping("/student/register")
    public String registerPage() {
        return "student-register"; // Refers to WEB-INF/views/student-register.jsp
    }

    @PostMapping("/student/register")
    public String register(@ModelAttribute Student student, Model model) {
        studentService.registerStudent(student);
        model.addAttribute("message", "Student registered successfully");
        return "student-login"; // Redirect to login after successful registration
    }
    @Autowired
    private AnnouncementService announcementService;

    // Display all announcements for students
    @GetMapping("/student/announcements")
    public String showStudentAnnouncements(Model model) {
        model.addAttribute("announcements", announcementService.getAllAnnouncements());
        return "student/announcements";  // JSP for student announcements
    }
    @Autowired
    private AssignmentService assignmentService;
    @GetMapping("/student/assignments")
    public String viewStudentAssignments(HttpSession session, Model model) {
        Student student = (Student) session.getAttribute("student");
        if (student == null) {
            return "redirect:/student/login";
        }
        model.addAttribute("assignments", assignmentService.getAssignmentsByStudent(student.getId()));
        return "student-view-assignments"; // JSP page
    }

    @PostMapping("/student/upload-assignment")
    public String uploadAssignment(@RequestParam Long assignmentId, @RequestParam("file") MultipartFile file) {
        String filePath = "/uploads/" + file.getOriginalFilename(); // Define upload path
        assignmentService.uploadAssignment(assignmentId, filePath);
        return "student-upload-assignment";
    }

}
