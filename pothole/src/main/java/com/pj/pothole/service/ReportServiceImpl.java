package com.pj.pothole.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pj.pothole.entity.Report;
import com.pj.pothole.repository.ReportRepository;

@Service
public class ReportServiceImpl implements ReportService{
	
	@Autowired
	private ReportRepository reportRepository;

	@Override
	public void insertReport(Report report) {
		reportRepository.save(report);
		
	}

}
