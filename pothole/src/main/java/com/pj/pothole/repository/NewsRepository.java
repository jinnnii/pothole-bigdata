package com.pj.pothole.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.pj.pothole.entity.News;

public interface NewsRepository extends JpaRepository<News, Long>{

}
