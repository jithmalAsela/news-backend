package com.lk.news.controller;

import com.lk.news.model.Article;
import com.lk.news.service.ArticleService;
import io.swagger.annotations.ApiOperation;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.crossstore.ChangeSetPersister;
import org.springframework.web.bind.annotation.*;

import java.util.List;

import static com.lk.news.util.AppConstant.NO_DATA_FOUND;

@RestController
@RequestMapping("/api/articles")
@CrossOrigin
public class NewsAPIController {

    @Autowired
    ArticleService articleService;

    private final Logger logger = LoggerFactory.getLogger(NewsAPIController.class);

    @ApiOperation(value = "get All Articles", response = Article.class)
    @GetMapping
    public List<Article> getAllArticles() {
        logger.info("Method getAllArticles");
        return articleService.getAllArticles();
    }

    @ApiOperation(value = "get All Articles by id", response = Article.class)
    @GetMapping("getArticleById/{id}")
    public Article getArticleById(@PathVariable Long id) {
        Article articleById = new Article();
        logger.info("Method getArticleById : {}",id);
        try {
            articleById = articleService.getArticleById(id);
        } catch (ChangeSetPersister.NotFoundException e) {
            logger.info("Error in getArticleById : {}",e.getMessage());
        }
        return articleById;
    }

    @PostMapping
    public Article createArticle(@RequestBody Article article) {
        logger.info("Method createArticle : {}",article);
        articleService.createArticle(article);
        return articleService.clearArticleCache();
    }

}
