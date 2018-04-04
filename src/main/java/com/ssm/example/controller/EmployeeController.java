package com.ssm.example.controller;

import java.util.List;

import com.ssm.example.entity.Employee;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ssm.example.service.EmployeeService;

@Controller
public class EmployeeController {

	@Autowired
	private EmployeeService employeeService;
	
	/**
	 * 查询所有员工
	 * @return
	 */
	@RequestMapping(value="/queryAll")
	public ModelAndView test(){
		List<Employee> list = employeeService.queryAll();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("index");
		modelAndView.addObject("list", list);
		return modelAndView;
	}
	
}
