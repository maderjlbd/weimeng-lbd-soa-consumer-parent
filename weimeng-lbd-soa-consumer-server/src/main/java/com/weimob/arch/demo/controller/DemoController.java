package com.weimob.arch.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DemoController {

	@RequestMapping("/*")
	public ModelAndView index(){
		return new ModelAndView("index");
	}
}
