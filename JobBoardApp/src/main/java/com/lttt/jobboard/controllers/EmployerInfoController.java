/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lttt.jobboard.controllers;

import com.lttt.jobboard.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Dy
 */
@Controller
@ControllerAdvice
public class EmployerInfoController {
//    @Autowired
//    private UserService userService;
//    
//    @GetMapping(value = "/employer/{name}")
//    public ModelAndView employerInfo(@PathVariable(value = "name") String employerName) {
//        ModelAndView view = new ModelAndView();
//        view.setViewName("employer-info");
//        view.addObject("users", userService.getUserByUsername(employerName));     
//        return view;       
//    }
}
