package com.pj.pothole.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Enumerated;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

import com.pj.pothole.constant.RoadRank;

import lombok.Data;
@Entity
@Data
public class Node {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="node_id")
	private Long id;
	
	@Enumerated
	private RoadRank roadRank;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="region_id")
	private Region region;
	
	private double latitude;
	private double longitude;
	
}
