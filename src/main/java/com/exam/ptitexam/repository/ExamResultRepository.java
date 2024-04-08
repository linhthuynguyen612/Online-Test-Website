package com.exam.ptitexam.repository;

import com.exam.ptitexam.domain.Exam;
import com.exam.ptitexam.domain.ExamResult;
import com.exam.ptitexam.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ExamResultRepository extends JpaRepository<ExamResult, Long> {
    List<ExamResult> findByUser(User user);

    List<ExamResult> findByExam(Exam exam);

}
