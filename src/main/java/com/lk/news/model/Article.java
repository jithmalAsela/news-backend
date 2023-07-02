package com.lk.news.model;

import lombok.Data;

import javax.persistence.*;
import java.util.Date;

@Data
@Entity
@Table(name = "articles")
public class Article {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String title;

    private String summary;

    private String content;

    private boolean featured;

    private String category;

    private Date publisheddate;

    private String publishedby;

}
