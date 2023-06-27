package com.lk.news.controller;

import com.lk.news.model.Article;
import com.lk.news.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.crossstore.ChangeSetPersister;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/articles")
public class NewsAPIController {

    @Autowired
    ArticleService articleService;

    @RequestMapping("/test")
    String testMe(){
        return "Test 123";
    }

    @GetMapping
    public List<Article> getAllArticles() {
        return articleService.getAllArticles();
    }

    @GetMapping("/{id}")
    public Article getArticleById(@PathVariable Long id) {
        try {
            return articleService.getArticleById(id);
        } catch (ChangeSetPersister.NotFoundException e) {
            e.printStackTrace();
        }
        return null;
    }
}
