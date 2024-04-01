package com.exam.ptitexam.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.exam.ptitexam.domain.Exam;
import com.exam.ptitexam.repository.ExamRepository;

@Service
public class ExamService {
    private final ExamRepository examRepository;

    public ExamService(ExamRepository examRepository) {
        this.examRepository = examRepository;
    }

    public List<Exam> getAllExam() {
        return this.examRepository.findAll();
    }

    public Exam handleSaveExam(Exam exam) {
        return this.examRepository.save(exam);
    }

    public Exam getExamById(Long id) {
        return this.examRepository.findById(id).orElse(null);
    }

    public void deleteExamById(Long id) {
        this.examRepository.deleteById(id);
    }

    public Exam getExamByName(String name) {
        return this.examRepository.findByName(name);
    }
}
