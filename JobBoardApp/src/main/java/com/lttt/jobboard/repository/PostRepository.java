/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lttt.jobboard.repository;

import com.lttt.jobboard.pojo.Post;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

/**
 *
 * @author Dy
 */
public interface PostRepository {

    List<Post> getPosts(String kw);
    
    List<Post> getPostsArea(String kw, int areaId);
    
    List<Post> getPostsBySalaryKw(String kw,BigDecimal fromSalary, BigDecimal toSalary);

    List<Post> getPostsBySalary(BigDecimal fromSalary, BigDecimal toSalary);
    
    Post getPostId(int id);
    
    void addPost(Post post);
    boolean deletePost(int PostId);
    
    List<Object[]> getAllPosts(String kw,BigDecimal fromSalary, BigDecimal toSalary);   
    List<Object[]> getPostsArea(int areaId);
    List<Object[]> getPostsSalary(BigDecimal fromSalary, BigDecimal toSalary);
    List<Object[]> getPost();
    List<Object[]> getPostDate(Date fromDate, Date toDate);
    
}
