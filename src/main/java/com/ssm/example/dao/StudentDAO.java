package com.ssm.example.dao;

import java.util.List;

import com.ssm.example.entity.Student;

public interface StudentDAO {
	public List<Student> findAll();
}
