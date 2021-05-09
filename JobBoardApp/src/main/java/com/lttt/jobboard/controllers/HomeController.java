/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lttt.jobboard.controllers;

import com.lttt.jobboard.service.AreaService;
import com.lttt.jobboard.service.PostService;
import com.lttt.jobboard.service.UserService;
import com.lttt.jobboard.validator.WebAppValidator;
import java.math.BigDecimal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Admin
 */
@Controller
@ControllerAdvice
public class HomeController {
    @Autowired
    private PostService postService;
    
    @Autowired
    private AreaService areaService;
    
    @Autowired
    private UserService userService;
    
    @RequestMapping(value = "/")
    public ModelAndView index(@RequestParam(value = "kw", defaultValue = "") String kw,
            @RequestParam(value = "keyw", defaultValue = "") String keyw,
            @RequestParam(value = "fromSalary", defaultValue = "") BigDecimal fromSalary,
            @RequestParam(value = "toSalary", defaultValue = "") BigDecimal toSalary,
            @RequestParam(value = "username", defaultValue = "") String username) {
        ModelAndView view = new ModelAndView();
        view.setViewName("index");  
        view.addObject("areas", areaService.getAreas(keyw)); 
        view.addObject("posts", postService.getPosts(kw));
        view.addObject("users", userService.getUserByUsername(username));
        
        if(!kw.isEmpty() && fromSalary == null && toSalary == null){
            view.addObject("posts", postService.getPosts(kw));
        }else if(kw.isEmpty() && fromSalary != null && toSalary != null){
            view.addObject("posts", postService.getPostsBySalary(fromSalary,toSalary)); 
        }else if(!kw.isEmpty() && fromSalary != null && toSalary != null){            
            view.addObject("posts", postService.getPostsBySalaryKw(kw,fromSalary,toSalary)); 
        }              
        return view;
    }
    
    @GetMapping(value = "/posts/{post_id}")
    public ModelAndView detail(@PathVariable(value = "post_id") int postId) {
        ModelAndView view = new ModelAndView();
        view.setViewName("post-detail");
        view.addObject("post", postService.getPostId(postId));
        
        return view;       
    }
    
//    @GetMapping(value = "/employer/{name}")
//    public ModelAndView employerInfo(@PathVariable(value = "name") String employerName) {
//        ModelAndView view = new ModelAndView();
//        view.setViewName("employer-info");
//        view.addObject("users", userService.getUserByUsername(employerName));     
//        return view;
//        
//    }
}
