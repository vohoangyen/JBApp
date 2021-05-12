/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lttt.jobboard.repository;

import com.lttt.jobboard.pojo.Employer;
import java.util.List;

/**
 *
 * @author Dy
 */
public interface EmployerRepository {
    List<Object[]> getAllEmployer(String username);
    List<Object[]> getPostsEmployer(String username);
//    boolean addOrUpdateEmployee(Employer employer);
    List<Employer> getEmployer();
    Employer getEmployerId(int id);
    
    void addEmployer(Employer employer);
    void updateEmployer(Employer employer);
}
