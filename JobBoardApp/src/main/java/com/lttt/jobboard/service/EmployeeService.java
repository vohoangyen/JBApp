/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lttt.jobboard.service;

import com.lttt.jobboard.pojo.Employee;
import java.util.List;

/**
 *
 * @author Dy
 */
public interface EmployeeService {
    boolean addOrUpdateEmployee(Employee e);
    void addEmployee(Employee employee, String rootDir);
    List<Object[]> getAllEmployee(String username);
    List<Employee> getEmployee();
    
    Employee getEmployeeId(int id);
}