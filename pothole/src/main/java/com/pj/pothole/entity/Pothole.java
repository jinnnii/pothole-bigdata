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
public class Pothole {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="pothole_id")
	private Long id;
	
	private double latitude;
	private double longitude;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="region_id")
	private Region region;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="weather_id")
	private Weather weather;

	private Date date;
}
