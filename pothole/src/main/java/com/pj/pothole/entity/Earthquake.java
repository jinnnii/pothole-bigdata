package com.pj.pothole.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.Data;

@Entity
@Data
public class Earthquake {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="earthquake_id")
	private Long id;
	
	private Date date;
	private double latitude;
	private double longitude;
	
	private double magnitude;
	private double depth;
	private int intensity;
	
}