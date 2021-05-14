/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lttt.jobboard.repository.impl;

import com.lttt.jobboard.pojo.Apply;
import com.lttt.jobboard.pojo.Area;
import com.lttt.jobboard.pojo.Employee;
import com.lttt.jobboard.pojo.Employer;
import com.lttt.jobboard.pojo.JobTypes;
import com.lttt.jobboard.pojo.Major;
import com.lttt.jobboard.pojo.Position;
import com.lttt.jobboard.pojo.Post;
import com.lttt.jobboard.repository.StatisRepository;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;
import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import javax.transaction.Transactional;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Dy
 */
@Repository
public class StatisRepositoryImpl implements StatisRepository {

    @Autowired
    private SessionFactory sessionFactory;

    @Autowired
    private LocalSessionFactoryBean sessionsFactory;

    @Transactional
    @Override
    public List<Object[]> countPost(Date fromDate, Date toDate) {
        Session session = this.sessionsFactory.getObject().getCurrentSession();
        CriteriaBuilder builder = session.getCriteriaBuilder();
        CriteriaQuery<Object[]> query = builder.createQuery(Object[].class);

        Root applyRoot = query.from(Apply.class);
        Root postRoot = query.from(Post.class);
        Root employeeRoot = query.from(Employee.class);

        query = query.where(builder.and(
                builder.equal(postRoot.get("id"), applyRoot.get("postId"))
//                builder.equal(employeeRoot.get("id"), applyRoot.get("employeeId"))
                
        ));
        query.multiselect(postRoot.get("id"),
                postRoot.get("createPost").as(Date.class),
//                applyRoot.get("employeeId"),
                builder.count(postRoot.get("id")),
                builder.count(applyRoot.get("id"))
        );

        query.groupBy(postRoot.get("id"),
                postRoot.get("createPost").as(Date.class)
//                applyRoot.get("employeeId")
        );

        if (fromDate != null && toDate != null) {
            Predicate p1 = builder.greaterThanOrEqualTo(postRoot.get("createdDate").as(Date.class), fromDate);
            Predicate p2 = builder.lessThanOrEqualTo(postRoot.get("createdDate").as(Date.class), toDate);
            query = query.having(p1, p2);
        }

        Query q = session.createQuery(query);
        return q.getResultList();
    }

}
