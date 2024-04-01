package com.exam.ptitexam.controller.admin.User;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RestController;

import com.exam.ptitexam.domain.User;
import com.exam.ptitexam.service.UserService;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;


@RestController
public class UpdateUserController {

    private final UserService userService;

    public UpdateUserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/admin/user/{id}")
    public User getUserById(@PathVariable("id") Long id) {
        return this.userService.getUserById(id);
    }

    @PostMapping("/admin/user/delete/{id}")
    public String postMethodName(@PathVariable("id") Long id) {
        this.userService.deleteUserById(id);
        
        return "redirect:/admin/user";
    }
    
}
