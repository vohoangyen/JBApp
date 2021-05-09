/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lttt.jobboard.repository.impl;

import com.lttt.jobboard.pojo.Post;
import com.lttt.jobboard.repository.PostRepository;
import java.math.BigDecimal;
import java.util.List;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Dy
 */
@Repository
public class PostRepositoryImpl implements PostRepository{
    @Autowired
    private SessionFactory sessionFactory;   
    
    @Override
    public List<Post> getPosts(String kw) {
        List<Post> posts;
        Session session = sessionFactory.getCurrentSession();

        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Post> cr = builder.createQuery(Post.class);
        Root<Post> root = cr.from(Post.class);

        CriteriaQuery<Post> query = cr.select(root);
        if (!kw.isEmpty()) {
            String pattern = String.format("%%%s%%", kw);
            Predicate p2 = builder.like(root.get("description").as(String.class), pattern);

            query = query.where(builder.or( p2));
        }

        posts = session.createQuery(query).getResultList();

        return posts;
    }

    @Override
    public List<Post> getPostsBySalary(BigDecimal fromSalary, BigDecimal toSalary) {
        List<Post> posts;
        Session session = sessionFactory.getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Post> cr = builder.createQuery(Post.class);
        Root<Post> root = cr.from(Post.class);

        CriteriaQuery query = cr.select(root);
        if (fromSalary != null && toSalary != null) {
            Predicate p1 = builder.greaterThanOrEqualTo(root.get("salary").as(BigDecimal.class), fromSalary);
            Predicate p2 = builder.lessThanOrEqualTo(root.get("salary").as(BigDecimal.class), toSalary);
            
            query = query.where(builder.and(p1, p2));
        } 

        posts = session.createQuery(query).getResultList();
        
        return posts;
    }

    @Override
    public Post getPostId(int id) {
        Post post;
        
        Session session = sessionFactory.getCurrentSession();
        post = session.get(Post.class, id);
        
        return post;
    }

    @Override
    public List<Post> getPostsBySalaryKw(String kw, BigDecimal fromSalary, BigDecimal toSalary) {
        List<Post> posts;
        Session session = sessionFactory.getCurrentSession();

        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Post> cr = builder.createQuery(Post.class);
        Root<Post> root = cr.from(Post.class);

        CriteriaQuery<Post> query = cr.select(root);
        if (!kw.isEmpty() && fromSalary != null && toSalary != null) {
            String pattern = String.format("%%%s%%", kw);
            Predicate p1 = builder.like(root.get("description").as(String.class), pattern);
            Predicate p2 = builder.greaterThanOrEqualTo(root.get("salary").as(BigDecimal.class), fromSalary);
            Predicate p3 = builder.lessThanOrEqualTo(root.get("salary").as(BigDecimal.class), toSalary);

            query = query.where(builder.or(p1, p2, p3));
        }

        posts = session.createQuery(query).getResultList();

        return posts;
    }
    
}
