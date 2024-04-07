package com.exam.ptitexam.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.exam.ptitexam.domain.User;;

@Repository
public interface UserRepository extends JpaRepository<User, Long>{

    User findFirstById(Long id);
}
