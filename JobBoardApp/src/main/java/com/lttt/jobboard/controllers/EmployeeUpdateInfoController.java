/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lttt.jobboard.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author Admin
 */
@Controller
@RequestMapping("/employee-update-info")
public class EmployeeUpdateInfoController {
    @RequestMapping("/")
    public String EmployeeUpdateInformation(){
        return "employee-update-info";
    }
}
