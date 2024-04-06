package com.exam.ptitexam.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.exam.ptitexam.domain.Exam;

@Repository
public interface ExamRepository extends JpaRepository<Exam, String>{
    List<Exam> findAll();
    Exam findFirstById(String id);
    
}
