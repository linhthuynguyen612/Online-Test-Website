package com.exam.ptitexam.controller.admin.User;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.exam.ptitexam.domain.User;
import com.exam.ptitexam.service.UserService;

import org.springframework.ui.Model;


@Controller
public class UserController {

    private final UserService userService;
    public UserController(UserService userService) {
        this.userService = userService;
    }
    
    @GetMapping("/admin/user")
    public String getUserPage(Model model) {
        model.addAttribute("newUser", new User());
        List<User> users = this.userService.getAllUser();
        model.addAttribute("users", users);
        return "admin/user/show";
    }
    
 
    @PostMapping("/admin/user/create")
    public String postCreateUser(Model model, @ModelAttribute("newUser") User user){
        
        this.userService.handleSaveUser(user);
        
        return "redirect:/admin/user";
    }

    @PostMapping("/admin/user/update")
    public String postUpdateUser(Model model, @ModelAttribute("newUser") User user){
        User currentUser = this.userService.getUserByEmail(user.getEmail());
        System.out.println(user.getFullName());
        System.out.println(currentUser);
        if(currentUser != null){
            currentUser.setFullName(user.getFullName());
            currentUser.setEmail(user.getEmail());
            currentUser.setGender(user.getGender());
            currentUser.setStudentCode(user.getStudentCode());
            this.userService.handleSaveUser(currentUser);
        }
        System.out.println(currentUser);
        return "redirect:/admin/user";
    }

    
    
    
}
