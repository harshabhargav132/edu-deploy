package com.sdp.jfsd.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.sdp.jfsd.model.Announcement;
import com.sdp.jfsd.model.Assignment;
import com.sdp.jfsd.model.Teacher;
import com.sdp.jfsd.service.AnnouncementService;
import com.sdp.jfsd.service.AssignmentService;
import com.sdp.jfsd.service.TeacherService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class TeacherController {

    @Autowired
    private TeacherService teacherService;
    @GetMapping("/teacher/teacher-login")
    public String teacherloginpage() {
        return "teacher-login"; // Refers to WEB-INF/views/admin-login.jsp
    }
    @GetMapping("/teacher/mainhome")
    public String mainhome() {
        return "mainhome"; // Refers to WEB-INF/views/admin-login.jsp
    }
    @GetMapping("/teacher/teacher-dashboard")
    public String dashboard() {
        return "teacher-dashboard"; // Refers to WEB-INF/views/admin-login.jsp
    }

    @GetMapping("/teacher/login")
    public String loginPage() {
        return "teacher-login"; // Refers to WEB-INF/views/teacher-login.jsp
    }

    @PostMapping("/teacher/login")
    public String login(@RequestParam String username, @RequestParam String password, HttpSession session, Model model) {
        Teacher teacher = teacherService.authenticate(username, password);
        if (teacher != null) {
            session.setAttribute("teacher", teacher);
            return "teacher-dashboard"; // Refers to WEB-INF/views/teacher-dashboard.jsp
        } else {
            model.addAttribute("error", "Invalid credentials");
            return "teacher-login";
        }
    }

    @GetMapping("/teacher/register")
    public String registerPage() {
        return "teacher-register"; // Refers to WEB-INF/views/teacher-register.jsp
    }

    @PostMapping("/teacher/register")
    public String register(@ModelAttribute Teacher teacher, Model model) {
        teacherService.registerTeacher(teacher);
        model.addAttribute("message", "Teacher registered successfully");
        return "teacher-login"; // Redirect to login after successful registration
    }
    @Autowired
    private AnnouncementService announcementService;

    // Display announcements for the teacher
    @GetMapping("/teacher/announcements")
    public String showTeacherAnnouncements(HttpServletRequest request, Model model) {
        HttpSession session = request.getSession();
        Teacher teacher = (Teacher) session.getAttribute("teacher");

        if (teacher == null) {
            return "redirect:/teacherlogin";  // If no teacher session, redirect to login
        }

        Long teacherId = teacher.getId();  // Get teacher's ID from session
        model.addAttribute("announcements", announcementService.getAnnouncementsByTeacher(teacherId));
        return "teacher/announcements";  // JSP for teacher's announcements
    }

    // Add new announcement
    @PostMapping("/teacher/addAnnouncement")
    public String addAnnouncement(HttpServletRequest request, Announcement announcement) {
        HttpSession session = request.getSession();
        Teacher teacher = (Teacher) session.getAttribute("teacher");

        if (teacher == null) {
            return "redirect:/teacherlogin";  // If no teacher session, redirect to login
        }

        Long teacherId = teacher.getId();  // Get teacher's ID from session
        announcement.setTeacher(new Teacher(teacherId));  // Set teacher to current teacher
        announcementService.addAnnouncement(announcement);
        return "redirect:/teacher/announcements";  // Redirect to announcements page
    }
    @Autowired
    private AssignmentService assignmentService;
    @PostMapping("/teacher/create-assignment")
    public String createAssignment(@ModelAttribute Assignment assignment, HttpSession session) {
        Teacher teacher = (Teacher) session.getAttribute("teacher");
        if (teacher == null) {
            return "redirect:/teacher/login";
        }
        assignment.setTeacher(teacher);
        assignmentService.createAssignment(assignment);
        return "teacher-create-assignment"; // Redirect to teacher's assignments page
    }

    @GetMapping("/teacher/assignments")
    public String viewTeacherAssignments(HttpSession session, Model model) {
        Teacher teacher = (Teacher) session.getAttribute("teacher");
        if (teacher == null) {
            return "redirect:/teacher/login";
        }
        model.addAttribute("assignments", assignmentService.getAssignmentsByTeacher(teacher.getId()));
        return "teacher-view-assignments"; // JSP page
    }

    
}
