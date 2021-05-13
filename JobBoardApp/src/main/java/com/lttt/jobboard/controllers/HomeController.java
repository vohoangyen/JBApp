/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lttt.jobboard.controllers;

import com.lttt.jobboard.pojo.Apply;
import com.lttt.jobboard.pojo.Employee;
import com.lttt.jobboard.pojo.User;
import com.lttt.jobboard.service.ApplyerService;
import com.lttt.jobboard.service.AreaService;
import com.lttt.jobboard.service.EmployeeService;
import com.lttt.jobboard.service.MajorService;
import com.lttt.jobboard.service.PostService;
import com.lttt.jobboard.service.UserService;
import com.lttt.jobboard.validator.WebAppValidator;
import java.math.BigDecimal;
import java.util.Date;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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

    @Autowired
    private EmployeeService employeeService;

    @Autowired
    private MajorService majorService;
    
        @Autowired
    private ApplyerService applyerService;
//    @RequestMapping("/")
//    public String index(Model model, @RequestParam(value = "kw", defaultValue = "") String kw,
//            @RequestParam(name = "keyw", required = false) String keyw,
//            @RequestParam(name = "fromSalary", required = false) BigDecimal fromSalary,
//            @RequestParam(name = "toSalary", required = false) BigDecimal toSalary,
//            @RequestParam(name = "areaid", required = false) String areaId) {
//        
//        model.addAttribute("areas", areaService.getAreas()); 
//        model.addAttribute("posts", postService.getPosts(kw));
//
//        
////        if(!kw.isEmpty() && fromSalary == null && toSalary == null){
////            model.addAttribute("posts", postService.getPosts(kw));
////        }else if(kw.isEmpty() && fromSalary != null && toSalary != null){
////            model.addAttribute("posts", postService.getPostsBySalary(fromSalary,toSalary)); 
////        }else if(!kw.isEmpty() && fromSalary != null && toSalary != null){            
////            model.addAttribute("posts", postService.getPostsBySalaryKw(kw,fromSalary,toSalary)); 
////        }else if(kw.isEmpty() && areaId != null){
////            model.addAttribute("posts",this.postService.getPostsArea(kw,Integer.parseInt(areaId))); 
////        }
//        
//        return "index";
//    }
        
        
            @RequestMapping(value = "/")
    public ModelAndView index(@RequestParam(value = "kw", defaultValue = "") String kw,
            @RequestParam(value = "keyw", defaultValue = "") String keyw,
            @RequestParam(value = "fromSalary", defaultValue = "") BigDecimal fromSalary,
            @RequestParam(value = "toSalary", defaultValue = "") BigDecimal toSalary,
            @RequestParam(name = "areaid", defaultValue = "") String areaId) {
        ModelAndView view = new ModelAndView();
        view.setViewName("index");  
        view.addObject("areas", areaService.getAreas()); 
//        view.addObject("posts", postService.getPosts(kw));
        view.addObject("posts", postService.getPost());
        
//        if(!kw.isEmpty() && fromSalary == null && toSalary == null){
//            view.addObject("posts", postService.getPostsKw(kw));
//        }else if(kw.isEmpty() && fromSalary != null && toSalary != null){
//            view.addObject("posts", postService.getPostsSalary(fromSalary,toSalary)); 
//        }else if(!kw.isEmpty() && fromSalary != null && toSalary != null){            
//            view.addObject("posts", postService.getAllPosts(kw,fromSalary,toSalary)); 
//        }
        return view;
    }
    
        
//    
//    @RequestMapping(value = "/")
//    public ModelAndView index(@RequestParam(value = "areaId",defaultValue = "") String areaId,
//            @RequestParam(value = "keyw", defaultValue = "") String keyw,
//            @RequestParam(value = "fromSalary", defaultValue = "") BigDecimal fromSalary,
//            @RequestParam(value = "toSalary", defaultValue = "") BigDecimal toSalary) {
//        ModelAndView view = new ModelAndView();
//        view.setViewName("index");  
//        view.addObject("areas", areaService.getAreas()); 
////        view.addObject("posts", postService.getPosts(kw));
//        view.addObject("posts", postService.getPost());
//
////            view.addObject("areas", postService.getPostsArea(0));
//            if(!areaId.isEmpty()){
//                view.addObject("posts", postService.getPostsArea(Integer.parseInt(areaId)));
//            }
//                
//
////        if(areaId > 0 && fromSalary == null && toSalary == null){
////            
////        }
////        else if(Integer.parseInt(areaId) > 0 && fromSalary != null && toSalary != null){            
////            view.addObject("posts", postService.getAllPosts(kw,fromSalary,toSalary)); 
////        }
//        return view;
//    }


    @GetMapping(value = "/posts/{post_id}")
    public ModelAndView detail(@PathVariable(value = "post_id") int postId) {
        ModelAndView view = new ModelAndView();
        view.setViewName("post-detail");
        view.addObject("post", postService.getPostId(postId));

        return view;
    }
    
    @GetMapping(value = "/posts/{post_id}/{username}")
    public ModelAndView apply(
            @PathVariable(value = "post_id") int postId,
            @PathVariable(value = "username") String username) {
        ModelAndView view = new ModelAndView();
        view.setViewName("apply");

        view.addObject("post", postService.getPostId(postId));
        view.addObject("employees", employeeService.getAllEmployee(username));
        view.addObject("addApplyer", new Apply());

        return view;
    }

    @PostMapping(value = "/posts/{post_id}/{username}")
    public String addApplyer(Model model,
            @ModelAttribute(value = "addApplyer") @Valid Apply addApplyer,
           
            BindingResult result, HttpServletRequest request) {
        
        
        String rootDir = request.getSession().getServletContext().getRealPath("/");
        
        applyerService.addApply(addApplyer, rootDir);

        return "redirect:/";
    }   
}
