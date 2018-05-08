package com.ssm.example.controller;

import java.util.List;

import com.ssm.example.entity.Student;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ssm.example.service.StudentService;

@Controller
public class StudentController {

	@Autowired
	private StudentService studentService;
	
	/**
	 * 查找所有学生
	 * @return
	 */
	@RequestMapping(value="/findAll")
	public ModelAndView test(){
		List<Student> list = studentService.findAll();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("index");
		modelAndView.addObject("list", list);
		return modelAndView;
	}
	
}
