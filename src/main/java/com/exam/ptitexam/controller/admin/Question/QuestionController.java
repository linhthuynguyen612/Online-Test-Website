package com.exam.ptitexam.controller.admin.Question;

import com.exam.ptitexam.domain.Question;
import com.exam.ptitexam.repository.QuestionRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class QuestionController {
    @Autowired
    private QuestionRepository questionRepository;

    @GetMapping("admin/exam/question")
    public String getQuestionPage (Model model){
        List<Question> questions = questionRepository.findAll();
        model.addAttribute("questions", questions);
        model.addAttribute("newQuestion", new Question());
        return "";
    }

    @GetMapping("admin/exam/question/create_question")
    public String getCreateQuestion (Model model) {
        model.addAttribute("newQuestion", new Question());
        return "admin/question/create";
    }

//    @PostMapping("admin/exam/question/create_question")
//    public String postCreateQuestion (Model model, @ModelAttribute("newQuestion") Question question) {
//        questionRepository.save(question);
//        return "redirect:/admin/question";
//    }

    @PostMapping("admin/exam/question/create_question")
    public String createQuestion (@RequestBody List<Question> questions) {

        questionRepository.saveAll(questions);
        return "redirect:/admin/question";
    }

    @PutMapping("admin/exam/question/update_question")
    public String putUpdateQuestion (Model model, @ModelAttribute("newQuestion") Question question) {
        Question foundQuestion = questionRepository.findById(question.getId());
        if (foundQuestion != null) {
            foundQuestion.setQuestionContent(question.getQuestionContent());
            foundQuestion.setOptionA(question.getOptionA());
            foundQuestion.setOptionB(question.getOptionB());
            foundQuestion.setOptionC(question.getOptionC());
            foundQuestion.setOptionD(question.getOptionD());
            foundQuestion.setCorrectOptionIndex(question.getCorrectOptionIndex());
            questionRepository.save(foundQuestion);
        }
        return "";

    }
}
