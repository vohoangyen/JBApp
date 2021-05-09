/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lttt.jobboard.service;

import com.lttt.jobboard.pojo.User;
import org.springframework.security.core.userdetails.UserDetailsService;

/**
 *
 * @author Dy
 */
public interface UserService extends UserDetailsService {
    void addUser(User user);
    User getUserByUsername(String username);
}
