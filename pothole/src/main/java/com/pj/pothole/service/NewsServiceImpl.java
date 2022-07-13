package com.pj.pothole.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Pageable;
import com.pj.pothole.entity.News;
import com.pj.pothole.repository.NewsRepository;

@Service
public class NewsServiceImpl implements NewsService{
	@Autowired
	NewsRepository newsRepository;
	
	
	@Override
	public List<News> getNewsList(Pageable pageable) {
		return newsRepository.findAll(pageable).getContent();
	}

	@Override
	public News getNews(Long id) {
		return newsRepository.findById(id).get();
	}

	@Override
	public List<News> getNewsTitleLike(String word, Pageable pageable) {
		return newsRepository.findByTitleLike(word,pageable);
	}

	@Override
	public long count() {
		return newsRepository.count();
	}

	@Override
	public News findbyId(Long id) {
		return newsRepository.findById(id).get();
	}
	
}
