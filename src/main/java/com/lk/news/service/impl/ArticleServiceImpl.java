package com.lk.news.service.impl;

import com.lk.news.model.Article;
import com.lk.news.repository.ArticleRepository;
import com.lk.news.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.crossstore.ChangeSetPersister;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ArticleServiceImpl implements ArticleService {

    @Autowired
    ArticleRepository articleRepository;

    @Override
    public List<Article> getAllArticles() {
        return articleRepository.findAll();
    }

    @Override
    public Article getArticleById(Long id) throws ChangeSetPersister.NotFoundException {
        return articleRepository.findById(id)
                .orElseThrow(() -> new ChangeSetPersister.NotFoundException());
    }
}
