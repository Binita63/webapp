/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.webapp.student;

/**
 *
 * @author user
 */
public class Course {
    int id;
    String coursename,fees;
    
    public Course() {
    }

    public Course(int id, String coursename, String fees) {
        this.id = id;
        this.coursename = coursename;
        this.fees = fees;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCoursename() {
        return coursename;
    }

    public void setCoursename(String coursename) {
        this.coursename = coursename;
    }

    public String getFees() {
        return fees;
    }

    public void setFees(String fees) {
        this.fees = fees;
    }

    
}
