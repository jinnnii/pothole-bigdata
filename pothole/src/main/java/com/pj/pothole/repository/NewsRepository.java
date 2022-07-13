package com.pj.pothole.repository;

import java.util.List;

import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.pj.pothole.entity.News;

public interface NewsRepository extends JpaRepository<News, Long>{
	@Query("select s from News s where s.title like %?1%")
	public List<News> findByTitleLike(String word, Pageable pageable);
}
