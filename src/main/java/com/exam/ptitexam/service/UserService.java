package com.exam.ptitexam.service;


import java.util.List;

import org.springframework.stereotype.Service;

import com.exam.ptitexam.domain.Role;
import com.exam.ptitexam.domain.User;
import com.exam.ptitexam.domain.dto.RegisterDTO;
import com.exam.ptitexam.repository.RoleRepository;
import com.exam.ptitexam.repository.UserRepository;

@Service
public class UserService {

    private final UserRepository UserRepository;
    private final RoleRepository roleRepository;

    public UserService(UserRepository UserRepository, RoleRepository roleRepository) {
        this.UserRepository = UserRepository;
        this.roleRepository = roleRepository;
    }

    public List<User> getAllUser() {
        return UserRepository.findAll();
    }

    public User handleSaveUser(User user) {
        return this.UserRepository.save(user);
    }

    public User getUserById(Long id) {
        return this.UserRepository.findFirstById(id);
    }

    public void deleteUserById(Long id) {
        this.UserRepository.deleteById(id);
    }

    public Role getRoleByName(String name){
        return this.roleRepository.findByName(name);
    }

    public User registerDTOtoUser(RegisterDTO registerDTO){
        User user = new User();
        user.setEmail(registerDTO.getEmail());
        user.setPassword(registerDTO.getPassword());
        user.setFullName(registerDTO.getFullName());
        return user;
    
    }

    public boolean checkEmailExist(String email){
        return this.UserRepository.existsByEmail(email);
    }

    public User getUserByEmail(String email){
        return this.UserRepository.findByEmail(email);
    }
}
