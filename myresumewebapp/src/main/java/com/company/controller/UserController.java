package com.company.controller;

import com.company.dao.impl.UserRepository;
import com.company.entity.User;
import com.company.form.UserForm;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class UserController {

    @Autowired
    UserRepository userRepository;


    @RequestMapping(method = RequestMethod.GET, value = "/users")
    public ModelAndView index(@ModelAttribute("user") UserForm user) {
        List<User> users = userRepository.getAllUser(user.getName(), user.getSurname(), null);
        ModelAndView modelAndView = new ModelAndView("users");
        modelAndView.addObject("users", users);
        return modelAndView;
    }

   @RequestMapping(method = RequestMethod.GET,value = "/login")
   public String index1(){
        return "login";
   }

    @RequestMapping(method = RequestMethod.GET,value = "/logout")
    public String index2(){
        return "logout";
    }

    @ModelAttribute("user")
    public UserForm getUserForm() {
        return new UserForm(null, null);
    }


}
