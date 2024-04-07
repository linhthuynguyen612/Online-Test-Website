package com.exam.ptitexam.controller.admin.User;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.exam.ptitexam.domain.User;
import com.exam.ptitexam.service.UserService;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;



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

    @GetMapping("/admin/user/create")
    public String getCreateUser(Model model){
        model.addAttribute("newUser", new User());
        return "admin/user/create";
    }    
 
    @PostMapping("/admin/user/create")
    public String postCreateUser(Model model, @ModelAttribute("newUser") User user){
        
        this.userService.handleSaveUser(user);
        
        return "redirect:/admin/user";
    }

    @GetMapping("/admin/user/update/{id}")
    public String getUpdateUserPage(Model model, @PathVariable("id") Long id) {
        User user = this.userService.getUserById(id);
        model.addAttribute("newUser", user);
        return "admin/user/update";
    }
    

    @PostMapping("/admin/user/update")
    public String postUpdateUser(Model model, @ModelAttribute("newUser") User user){
        User currentUser = this.userService.getUserById(user.getId());
        if(currentUser != null){
            currentUser.setFullName(user.getFullName());
            currentUser.setEmail(user.getEmail());
            currentUser.setGender(user.getGender());
            currentUser.setStudentCode(user.getStudentCode());
            this.userService.handleSaveUser(currentUser);
        }
         return "redirect:/admin/user";
    }

    @GetMapping("/admin/user/delete/{id}")
    public String deleteUserPage(Model model, @PathVariable("id") Long id){
        model.addAttribute("newUser", this.userService.getUserById(id));
        model.addAttribute("id", id);
        return "admin/user/delete";
    }

    @PostMapping("/admin/user/delete")
    public String postDeleteUser(Model model, @ModelAttribute("newUser") User user){
        this.userService.deleteUserById(user.getId());
        
        return "redirect:/admin/user";
    }
    
    
    
    
}
