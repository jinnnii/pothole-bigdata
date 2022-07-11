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
public class Danger {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="danger_id")
	private Long id;
	
	private int count;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="region_id")
	private Region region;
	
	private Date date;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="weather_id")
	private Weather weather;

}
