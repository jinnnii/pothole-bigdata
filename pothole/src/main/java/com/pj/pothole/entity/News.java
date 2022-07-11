package com.pj.pothole.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Lob;

import org.hibernate.annotations.CreationTimestamp;
import org.springframework.format.annotation.DateTimeFormat;

import com.pj.pothole.constant.ReportType;

import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class News {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="news_id")
	private Long id;
	
	private String img;
	
	private String title;
	
	@Lob
	private String content;
	
	@CreationTimestamp
	@DateTimeFormat( pattern = "yy-MM-dd")
	private Date regdate;

}
