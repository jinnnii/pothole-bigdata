package com.pj.pothole.entity;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Convert;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.databind.ser.std.StdArraySerializers.FloatArraySerializer;

import lombok.Data;

@Entity
@Data
public class Region {
	@Id
	@Column(name = "region_id")
	private String id;
<<<<<<< Updated upstream
	
=======
>>>>>>> Stashed changes
	private String dong;

	private float population;

	private float manhole;

	private float crack;

	private float tosil;

	private int flood;
	
	private float truck;

}
