package com.ssm.example.service.impl;

import java.util.List;

import com.ssm.example.dao.StudentDAO;
import com.ssm.example.entity.Student;
import com.ssm.example.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentDAO studentDAO;
	
	public List<Student> findAll() {
		// TODO Auto-generated method stub
		return studentDAO.findAll();
	}
	
}
