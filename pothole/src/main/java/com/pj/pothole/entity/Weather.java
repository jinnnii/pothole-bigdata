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
	
	private float hum;
	private float humMax;
	private float humMin;
	
	private float windSpeed;
	private float windSpeedMax;
	private float windSpeedMin;
	
	private float temp;
	private float tempMax;
	private float tempMin;
	
	private float aqua;
	private float tempChg;
	
	private float agoHumMax;
	private float agoHumMin;
	private float agoWindMax;
	private float agoWindMin;
	private float agoTempMax;
	private float agoTempMin;
	private float agoTempChgMax;
	private float agoTempChgMin;
	private float agoAquaSum;
	
	
	
}
