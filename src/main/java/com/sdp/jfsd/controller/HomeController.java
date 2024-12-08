package com.sdp.jfsd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
    @GetMapping("/")
    public String home() {
        return "mainhome"; // Refers to WEB-INF/views/home.jsp
    }
}
