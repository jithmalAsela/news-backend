package com.lk.news.service.impl;

import com.lk.news.model.Article;
import com.lk.news.repository.ArticleRepository;
import com.lk.news.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.CacheEvict;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.crossstore.ChangeSetPersister;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ArticleServiceImpl implements ArticleService {

    @Autowired
    ArticleRepository articleRepository;


    @Cacheable(value = "articlesCache")
    @Override
    public List<Article> getAllArticles() {
        return articleRepository.findAll();
    }

    @Cacheable(value = "articleCache", key = "#id")
    @Override
    public Article getArticleById(Long id) throws ChangeSetPersister.NotFoundException {
        return articleRepository.findById(id)
                .orElseThrow(() -> new ChangeSetPersister.NotFoundException());
    }

    @CacheEvict(value = "articlesCache", allEntries = true)
    @Override
    public Article clearArticleCache() {
        return null;
    }

    @Override
    public Article createArticle(Article article) {
        return articleRepository.save(article);
    }

}
