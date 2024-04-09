package com.exam.ptitexam.controller.admin.ExamResult;

import com.exam.ptitexam.domain.ExamResult;
import com.exam.ptitexam.domain.User;
import com.exam.ptitexam.repository.ExamResultRepository;
import com.exam.ptitexam.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@Controller
public class ExamResultController {

    @Autowired
    private ExamResultRepository examResultRepository;
    @Autowired
    private UserRepository userRepository;

    @GetMapping("/admin/thongke/examresult/{userId}")
    public String getExamResultByUserPage (Model model, @PathVariable("userId") long userId) {
        User foundUser = userRepository.findFirstById(userId);
        List<ExamResult> results = examResultRepository.findByUser(foundUser);
        model.addAttribute("examResultByUser", results);
        return "admin/thongke/show";
    }

}
