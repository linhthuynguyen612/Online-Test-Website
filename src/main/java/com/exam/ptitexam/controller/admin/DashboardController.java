package com.exam.ptitexam.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class DashboardController {
    @GetMapping("/admin")
    public String getDashboardPage() {
        return "admin/dashboard/show";
    }
    
}
