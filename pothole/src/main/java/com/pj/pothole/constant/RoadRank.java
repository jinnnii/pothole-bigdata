package com.pj.pothole.constant;

import lombok.Getter;

@Getter
public enum RoadRank {
	HIGHWAY(101),
	CITYHIGHWAY(102),
	NATIONAL(103),
	SIDO(104),
	SUPPORT(105),
	LOCAL(106),
	SIGUNDO(107),
	ETC(108);
	
	private int code;
	
	RoadRank(int code){
		this.code=code;
	}
}
