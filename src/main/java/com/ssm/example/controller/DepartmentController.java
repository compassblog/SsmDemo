package com.ssm.example.controller;

import com.ssm.example.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class DepartmentController {
	
	@Autowired
	private DepartmentService departmentService;
	
}
