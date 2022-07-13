package com.pj.pothole.service;

import java.util.List;

import org.springframework.data.domain.Pageable;

import com.pj.pothole.entity.News;

public interface NewsService {
	public List<News> getNewsList(Pageable pageable);
	public News getNews(Long id);
	public List<News> getNewsTitleLike(String word, Pageable pageable);
	public long count();
	public News findbyId(Long id);
}