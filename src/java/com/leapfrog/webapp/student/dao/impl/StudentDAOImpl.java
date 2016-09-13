/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.webapp.student.dao.impl;

import com.leapfrog.webapp.student.Student;
import com.leapfrog.webapp.student.dao.StudentDAO;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Toshiba
 */
public class StudentDAOImpl implements StudentDAO {

    @Override
    public List<Student> getAll() {
      List<Student> studentlist= new ArrayList<>();
      studentlist.add(new Student(1,"binita","sharma","bni.com","98789685"));
       studentlist.add(new Student(2,"binita","hsdga","sh.com","93726685"));
        studentlist.add(new Student(3,"sharma","nhdga","ga.com","9876685"));
      return studentlist;
    }

    @Override
    public Student getById() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
