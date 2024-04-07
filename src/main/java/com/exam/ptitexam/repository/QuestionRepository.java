package com.exam.ptitexam.repository;

import com.exam.ptitexam.domain.Exam;
import com.exam.ptitexam.domain.Question;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface QuestionRepository extends JpaRepository<Question, Long> {
    @Override
    List<Question> findAll();
    List<Question> findByExam(Exam exam);

    Question findById(long id);
}
