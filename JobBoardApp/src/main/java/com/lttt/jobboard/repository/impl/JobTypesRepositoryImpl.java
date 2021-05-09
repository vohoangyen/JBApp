/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lttt.jobboard.repository.impl;

import com.lttt.jobboard.pojo.JobTypes;
import com.lttt.jobboard.repository.JobTypesRepository;
import java.util.List;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author Admin
 */
@Repository
public class JobTypesRepositoryImpl implements JobTypesRepository{
    @Autowired
    private SessionFactory sessionFactory;
    
    @Override
    @Transactional
    public List<JobTypes> getJobTypes(String kw) {
        List<JobTypes> jobtypes;
        Session session = sessionFactory.getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<JobTypes> cr = builder.createQuery(JobTypes.class);
        Root<JobTypes> root = cr.from(JobTypes.class);

        CriteriaQuery query = cr.select(root);
        if (!kw.isEmpty())
            query = query.where(builder.like(root.get("name").as(String.class),  
                    "%" + kw + "%"));

        jobtypes = session.createQuery(query).getResultList();        
        return jobtypes;
    }
    
}
