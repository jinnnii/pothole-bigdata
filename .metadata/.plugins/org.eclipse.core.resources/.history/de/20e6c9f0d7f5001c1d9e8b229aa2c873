package com.pj.pothole.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import lombok.Data;

@Entity
@Data
public class Weather {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="weather_id")
	private Long id;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="region_id")
	private Region region;
	
	private Date date;
	
	private double humidity;
	private double wind_speed;
	private double temp;
	private double aqua;
	
	private double avg_h;
	private double avg_w;
	private double avg_t;
	private double sum_a;
	
}
