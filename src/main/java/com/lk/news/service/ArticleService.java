package com.lk.news.service;

import com.lk.news.model.Article;
import org.springframework.data.crossstore.ChangeSetPersister;

import java.util.List;

public interface ArticleService {

    List<Article> getAllArticles();

    Article getArticleById(Long id) throws ChangeSetPersister.NotFoundException;
}
