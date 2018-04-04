package com.ssm.example.service.impl;

import java.util.List;

import com.ssm.example.dao.EmployeeDAO;
import com.ssm.example.entity.Employee;
import com.ssm.example.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmployeeDAO employeeDAO;
	
	public List<Employee> queryAll() {
		// TODO Auto-generated method stub
		return employeeDAO.queryAll();
	}
	
}
