/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.webapp.student.dao.impl;

import com.leapfrog.webapp.student.Course;
import com.leapfrog.webapp.student.Student;
import com.leapfrog.webapp.student.dao.CourseDAO;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author user
 */
public class CourseDAOImpl implements CourseDAO {

    @Override
    public List<Course> getAll() {
        List<Course> courselist= new ArrayList<>();
      courselist.add(new Course(1,"php","20000"));
       courselist.add(new Course(2,"android","20000"));
      return courselist;
    }

    @Override
    public Course getById() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
