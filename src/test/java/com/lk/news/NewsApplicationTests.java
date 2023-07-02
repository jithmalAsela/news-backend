package com.lk.news;

import com.lk.news.model.Article;
import com.lk.news.repository.ArticleRepository;
import com.lk.news.service.impl.ArticleServiceImpl;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.data.crossstore.ChangeSetPersister;

import java.util.Optional;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.*;

class NewsApplicationTests {

		@Mock
		private ArticleRepository articleRepository;

		@InjectMocks
		private ArticleServiceImpl articleService;

		public NewsApplicationTests() {
			MockitoAnnotations.initMocks(this);
		}

		@Test
		void testGetArticleById() {
			Long articleId = 1L;
			Article expectedArticle = new Article();
			when(articleRepository.findById(articleId)).thenReturn(Optional.of(expectedArticle));


			Article actualArticle = null;
			try {
				actualArticle = articleService.getArticleById(articleId);
			} catch (ChangeSetPersister.NotFoundException e) {
				e.printStackTrace();
			}

			assertEquals(expectedArticle, actualArticle);
			verify(articleRepository, times(1)).findById(articleId);
		}
	}
