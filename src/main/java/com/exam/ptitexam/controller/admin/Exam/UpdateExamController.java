package com.exam.ptitexam.controller.admin.Exam;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

import com.exam.ptitexam.domain.Exam;
import com.exam.ptitexam.service.ExamService;

@RestController
public class UpdateExamController {
    private final ExamService examService;

    public UpdateExamController(ExamService examService) {
        this.examService = examService;
    }

    @GetMapping("/admin/exam/{id}")
    public Exam getUserById(@PathVariable("id") String id) {
        return this.examService.getExamById(id);
    }

    @PostMapping("/admin/exam/delete/{id}")
    public String postMethodName(@PathVariable("id") String id) {
        this.examService.deleteExamById(id);
        
        return "redirect:/admin/exam";
    }
}
