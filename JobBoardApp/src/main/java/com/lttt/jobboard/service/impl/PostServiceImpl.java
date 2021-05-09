/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lttt.jobboard.service.impl;

import com.lttt.jobboard.pojo.Post;
import com.lttt.jobboard.repository.PostRepository;
import com.lttt.jobboard.service.PostService;
import java.math.BigDecimal;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Dy
 */
@Service
@Transactional
public class PostServiceImpl implements PostService{
    @Autowired
    private PostRepository postRepository;
  
    @Override
    @Transactional(readOnly = true)
    public List<Post> getPosts(String kw) {
        return postRepository.getPosts(kw);
    }

    @Override
    @Transactional(readOnly = true)
    public List<Post> getPostsBySalary(BigDecimal fromSalary, BigDecimal toSalary) {
        return postRepository.getPostsBySalary(fromSalary,toSalary);
    }

    @Override
    @Transactional(readOnly = true)
    public Post getPostId(int id) {
        return postRepository.getPostId(id);
    }

    @Override
    public List<Post> getPostsBySalaryKw(String kw, BigDecimal fromSalary, BigDecimal toSalary) {
        return postRepository.getPostsBySalaryKw(kw,fromSalary,toSalary);
    }
    
}
