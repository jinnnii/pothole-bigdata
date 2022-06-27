package com.pj.pothole.entity;

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
public class Traffic {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="traffic_id")
	private Long id;
	
	private String lineName;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="region_id")
	private Region region;
	
	private int daily;
//	private int carType;
	
	private int increase;
}
