package com.pj.pothole.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pj.pothole.entity.Report;
import com.pj.pothole.service.ReportService;

@Controller
@RequestMapping("/")
public class ReportController {

	@Autowired
	private ReportService reportService;
	
	@GetMapping("report")
	public void report() {
		
	}
	
	@PostMapping("reportProc")
	@ResponseBody
	public String join(@RequestBody Report report) {
		reportService.insertReport(report);
		return "success";
	}
}
