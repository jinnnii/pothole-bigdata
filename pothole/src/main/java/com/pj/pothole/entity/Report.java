package com.pj.pothole.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.CreationTimestamp;
import org.springframework.format.annotation.DateTimeFormat;

import com.pj.pothole.constant.ReportType;

import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Report {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="report_id")
	private Long id;
	
	@Column(nullable=false)
	@Enumerated(EnumType.STRING)
	private ReportType reportType;
	
	private String addr;
	
	private double latitude;
	private double longitude;
	
	private String img;
	
	private String title;
	
	@Lob
	private String content;
	
	@CreationTimestamp
	@DateTimeFormat( pattern = "yy-MM-dd")
	private Date regdate;
	
	private String phone;
	
	
	private boolean isshare;
	private boolean completed;
	
	private String name;
	private String email;

}
