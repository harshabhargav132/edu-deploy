package com.sdp.jfsd.controller;

import com.sdp.jfsd.model.ContactMessage;
import com.sdp.jfsd.service.ContactService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ContactController {

    @Autowired
    private ContactService contactService;
    @GetMapping("/contact-us/mainhome")
    public String mainhome() {
        return "mainhome"; // Refers to WEB-INF/views/admin-login.jsp
    }
    @GetMapping("/contact-us")
    public String showContactUsPage() {
        return "contact-us"; // Refers to /WEB-INF/views/contact-us.jsp
    }

    @PostMapping("/contact/submit")
    public String submitContactForm(@RequestParam String name, @RequestParam String email, @RequestParam String message, Model model) {
        // Create ContactMessage instance and save it
        ContactMessage contactMessage = new ContactMessage();
        contactMessage.setName(name);
        contactMessage.setEmail(email);
        contactMessage.setMessage(message);
        
        // Save to the database
        contactService.saveContactMessage(contactMessage);

        // Show success message
        model.addAttribute("success", "Thank you for contacting us! We will get back to you soon.");

        return "contact-us"; // Return to the contact-us page with success message
    }
}
