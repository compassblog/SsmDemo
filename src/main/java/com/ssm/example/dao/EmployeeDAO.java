package com.ssm.example.dao;

import java.util.List;

import com.ssm.example.entity.Employee;

public interface EmployeeDAO {
	public List<Employee> queryAll();
}
