package com.ssm.example.service.impl;

import com.ssm.example.dao.DepartmentDAO;
import com.ssm.example.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DepartmentServiceImpl implements DepartmentService {

	@Autowired
	private DepartmentDAO departmentDAO;
	
}
