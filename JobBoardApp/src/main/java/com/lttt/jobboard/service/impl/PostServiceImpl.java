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
import java.util.Date;
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

    @Override
    public List<Post> getPostsArea(String kw, int id) {
        return postRepository.getPostsArea(kw,id);
    }

    
    @Override
    public List<Object[]> getAllPosts(String kw, BigDecimal fromSalary, BigDecimal toSalary) {
        return postRepository.getAllPosts(kw,fromSalary,toSalary);
    }

    @Override
    public List<Object[]> getPostsArea(int areaId) {
        return postRepository.getPostsArea(areaId);
    }

    @Override
    public List<Object[]> getPostsSalary(BigDecimal fromSalary, BigDecimal toSalary) {
        return postRepository.getPostsSalary(fromSalary,toSalary);
    }

    @Override
    public List<Object[]> getPost() {
        return postRepository.getPost();
    }

    @Override
    @Transactional
    public void addPost(Post post) {
        postRepository.addPost(post);
    }

    @Override
    public boolean deletePost(int PostId) {
        return this.postRepository.deletePost(PostId);
    }

    @Override
    public List<Object[]> getPostDate(Date fromDate, Date toDate) {
        return this.postRepository.getPostDate(fromDate, toDate);
    }
    
}
