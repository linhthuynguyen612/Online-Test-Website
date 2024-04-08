package com.exam.ptitexam.controller.client;


import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.exam.ptitexam.domain.Exam;
import com.exam.ptitexam.service.ExamService;

@Controller
public class HomePageController {

    private final ExamService examService;

    public HomePageController(ExamService examService) {
        this.examService = examService;
    }

    @GetMapping("/")
    public String getHomePage(Model model) {
        List<Exam> exams = this.examService.getAllExam();
        model.addAttribute("exams", exams);
        return "client/homepage/home";
    }

   
   
}
