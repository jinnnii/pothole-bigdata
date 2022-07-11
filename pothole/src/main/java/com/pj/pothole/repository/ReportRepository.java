package com.pj.pothole.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.pj.pothole.entity.Report;

public interface ReportRepository extends JpaRepository<Report, Long>{

}
