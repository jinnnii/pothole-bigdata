package com.pj.pothole.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pj.pothole.entity.Report;

import lombok.extern.java.Log;

@Controller
@RequestMapping("/maps")
@Log
public class MapController {
	@GetMapping("/history")
	@ResponseBody
	public String histroy() {
		return "https://public.tableau.com/views/220715-4/new_?:language=ko-KR&publish=yes&:display_count=n&:origin=viz_share_link&:embed=yes&:showVizHome=no&:showAppBanner=false&:showAskData=false&:showShareOptions=false&:subscriptions=no&:tabs=no&:toolbar=no&:tooltip=yes";
	}
	
	@GetMapping("/predict")
	@ResponseBody
	public String predict() {
		return "https://public.tableau.com/views/220715-4/__19?:language=ko-KR&publish=yes&:display_count=n&:origin=viz_share_link&:embed=yes&:showVizHome=no&:showAppBanner=false&:showAskData=false&:showShareOptions=false&:subscriptions=no&:tabs=no&:toolbar=no&:tooltip=yes";
	}
	
	@GetMapping("/trap")
	@ResponseBody
	public String trap() {
		return "https://public.tableau.com/views/220715-4/__17?:language=ko-KR&publish=yes&:display_count=n&:origin=viz_share_link&:embed=yes&:showVizHome=no&:showAppBanner=false&:showAskData=false&:showShareOptions=false&:subscriptions=no&:tabs=no&:toolbar=no&:tooltip=yes";
	}
	
	@GetMapping("/report")
	@ResponseBody
	public String report() {
		return "https://public.tableau.com/views/220715-4/__18?:language=ko-KR&publish=yes&:display_count=n&:origin=viz_share_link&:embed=yes&:showVizHome=no&:showAppBanner=false&:showAskData=false&:showShareOptions=false&:subscriptions=no&:tabs=no&:toolbar=no&:tooltip=yes";
	}
}
