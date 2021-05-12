/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lttt.jobboard.repository;

import com.lttt.jobboard.pojo.Employee;
import java.util.List;

/**
 *
 * @author Dy
 */
public interface EmployeeRepository {
    boolean addOrUpdateEmployee(Employee e);
    void addEmployee(Employee employee);
    List<Object[]> getAllEmployee(String username);
    List<Employee> getEmployee();
    
    Employee getEmployeeId(int id);
    
}
