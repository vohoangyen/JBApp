/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lttt.jobboard.pojo;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 *
 * @author Dy
 */
@Entity
@Table(name = "apply")
public class Apply implements Serializable{
    @Id
    @ManyToOne
    @JoinColumn(name = "employee_id")
    private Employee employeeId;
    
    @Column(name = "apply_date")
    private Date appyDate;
    
    @ManyToOne
    @JoinColumn(name = "post_id")
    private Post postId;

    /**
     * @return the employeeId
     */
    public Employee getEmployeeId() {
        return employeeId;
    }

    /**
     * @param employeeId the employeeId to set
     */
    public void setEmployeeId(Employee employeeId) {
        this.employeeId = employeeId;
    }

    /**
     * @return the appyDate
     */
    public Date getAppyDate() {
        return appyDate;
    }

    /**
     * @param appyDate the appyDate to set
     */
    public void setAppyDate(Date appyDate) {
        this.appyDate = appyDate;
    }

    /**
     * @return the postId
     */
    public Post getPostId() {
        return postId;
    }

    /**
     * @param postId the postId to set
     */
    public void setPostId(Post postId) {
        this.postId = postId;
    }
}
