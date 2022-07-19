package com.pj.pothole.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class IndexController {

	@GetMapping(value = { "", "home" })
	public String index() {
		return "home";
	}
	
	@GetMapping("maps")
	public String maps() {
		return "index";
	}
	
	@GetMapping("join")
	public void joinForm() {
		
	}
	
	@GetMapping("login")
	public void loiginForm() {
		
	}
	
}
