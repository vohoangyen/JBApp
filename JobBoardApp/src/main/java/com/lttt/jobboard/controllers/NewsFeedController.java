/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lttt.jobboard.controllers;

import com.lttt.jobboard.service.AreaService;
import com.lttt.jobboard.service.JobTypesService;
import com.lttt.jobboard.service.MajorService;
import com.lttt.jobboard.service.PostService;
import java.math.BigDecimal;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author Admin
 */
@Controller
@ControllerAdvice
public class NewsFeedController {
    @Autowired
    private PostService postService;

    @Autowired
    private AreaService areaService;

    @Autowired
    private MajorService majorService;

    @Autowired
    private JobTypesService jobTypesService;

    @RequestMapping(value = "/news-feed")
    public ModelAndView NewsFeed(
            @RequestParam(value = "jobtype_id", defaultValue = "") String jobtypeId,
            @RequestParam(value = "areaId", defaultValue = "") String areaId,
            @RequestParam(value = "majorId", defaultValue = "") String majorId,
            @RequestParam(value = "jobtypeId", defaultValue = "") String s_jobtypeId,
            @RequestParam(value = "fromSalary", defaultValue = "") BigDecimal fromSalary,
            @RequestParam(value = "toSalary", defaultValue = "") BigDecimal toSalary) {

        ModelAndView view = new ModelAndView();
        view.setViewName("news-feed");

        view.addObject("jobtypes", jobTypesService.getJobTypes(""));
        view.addObject("majors", majorService.getMajors());
        view.addObject("areas", areaService.getAreas());

        if (jobtypeId.isEmpty()) {
            view.addObject("posts", postService.getPost());
        } else {
            view.addObject("posts", jobTypesService.getPostsByJobtypeId(Integer.parseInt(jobtypeId)));
        }
        
        if (!areaId.isEmpty() && !majorId.isEmpty() && !s_jobtypeId.isEmpty() && fromSalary != null && toSalary != null) {
            view.addObject("posts", postService.getPostsByAny(
                    Integer.parseInt(areaId),
                    Integer.parseInt(majorId),
                    Integer.parseInt(s_jobtypeId),
                    fromSalary, toSalary));
        }else if(!areaId.isEmpty() && !majorId.isEmpty() && !s_jobtypeId.isEmpty() && fromSalary == null && toSalary == null){
            view.addObject("posts", postService.getPostsBySelected( 
                    Integer.parseInt(areaId),
                    Integer.parseInt(majorId),
                    Integer.parseInt(s_jobtypeId)));

        }
        return view;
    }
}
