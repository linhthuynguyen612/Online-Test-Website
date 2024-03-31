package com.exam.ptitexam.service;


import java.util.List;

import org.springframework.stereotype.Service;

import com.exam.ptitexam.domain.User;
import com.exam.ptitexam.repository.UserRepository;

@Service
public class UserService {

    private final UserRepository UserRepository;

    public UserService(UserRepository UserRepository) {
        this.UserRepository = UserRepository;
    }

    public List<User> getAllUser() {
        return UserRepository.findAll();
    }
}
