package com.pj.pothole.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import org.springframework.data.web.PageableDefault;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.pj.pothole.entity.News;
import com.pj.pothole.service.NewsService;

import lombok.extern.java.Log;
import net.bytebuddy.dynamic.scaffold.MethodGraph.Node.Sort;

@Controller
@RequestMapping("/news")
@Log
public class NewsController {
	@Autowired
	private NewsService newsService;
	
	/**
	 * News all select List
	 * @param model
	 * @return
	 */
	@GetMapping("/list")
	public String getNewsList(Model model,
			@RequestParam(name="page", defaultValue="0") int page,
			@RequestParam(name="field", defaultValue="") String field,
			@RequestParam(name="word", defaultValue="") String word,
			@PageableDefault(size=10)Pageable pageable) {
		
		List<News> newsList = null;
		if(!field.equals("")&&!word.equals("")) {
			switch (field) {
			case "title":
				newsList = newsService.getNewsTitleLike(word,pageable);
				break;
			
			default:
				break;
			}
		}else {
			
			newsList = newsService.getNewsList(pageable.withPage(page));
		}
		
		model.addAttribute("newsList", newsList);
		
		log.info("검색 결과 :::: "+newsList.size());
		
		long pageSize = pageable.getPageSize();
		long count = newsService.count();
		long totPage=(long)Math.ceil((double)count/pageSize);
		long curPage=pageable.getPageNumber();
		
		
		long startPage = (curPage/pageSize)*pageSize;
		long endPage= startPage+pageSize;
		
		if(endPage>totPage) {
			endPage=totPage;
		}
		
		boolean prev = startPage>0?true:false;
		boolean next = endPage<totPage?true:false;
		
		model.addAttribute("pageSize",pageSize);
		model.addAttribute("count",count);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		model.addAttribute("prev",prev);
		model.addAttribute("next",next);
		model.addAttribute("totPage", totPage);
		model.addAttribute("curPage", curPage);
		
		
		log.info("pageSize"+pageSize);
		log.info("startPage"+startPage);
		log.info("endPage"+endPage);
		log.info("prev"+prev);
		log.info("next"+next);
		log.info("totPage"+totPage);
		log.info("curPage"+curPage);
		
		return "news/news";
	}
	
	/**
	 * News Detail page
	 * @param id
	 * @return
	 */
	@GetMapping("/{id}")
	public String detailNews(@PathVariable("id") Long id, int page, Model model) {
		News news = newsService.findbyId(id);
		model.addAttribute("news",news);
		model.addAttribute("page",page);
		return "/news/detail";
	}
}
