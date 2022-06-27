package com.pj.pothole.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
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
public class Link {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="link_id")
	private Long id;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="start_node_id")
	private Node start_node;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="end_node_id")
	private Node end_node;
	
	private RoadRank roadRank;
	
	private int roadNum;
}