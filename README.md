# News Website API Documentation

The News Website application provides a set of API endpoints to interact with news articles. The API is built using Spring Boot and supports various operations to fetch and manage news articles.

## Base URL

The base URL for accessing the API is: `http://localhost:8080/api`

## API Endpoints

### Get All Articles

**Endpoint:** `GET /articles`

**Description:** This endpoint retrieves a list of all news articles available in the database.

**Response Format:**
```json
[
   {
    "id": 1,
    "title": "Article 1",
    "summary": "Lorem ipsum dolor sit amet",
    "content": "Lorem ipsum dolor sit amet",
    "featured": true,
    "category": "political",
    "publisheddate": "2023-07-01T18:30:00.000+00:00",
    "publishedby": "system"
},
   {
    "id": 2,
    "title": "Article 2",
    "summary": "Lorem ipsum dolor sit amet",
    "content": "Lorem ipsum dolor sit amet",
    "featured": true,
    "category": "political",
    "publisheddate": "2023-07-01T18:30:00.000+00:00",
    "publishedby": "system"
},
  // ... more articles
]
```

### Get Article by ID

**Endpoint:** `GET /articles/getArticleById/{id}`

**Description:** This endpoint retrieves a specific news article based on its ID.

**Parameters:**
- `{id}`: The unique ID of the article to retrieve.

**Response Format:**
```json
 {
    "id": 1,
    "title": "Article 1",
    "summary": "Lorem ipsum dolor sit amet",
    "content": "Lorem ipsum dolor sit amet",
    "featured": true,
    "category": "political",
    "publisheddate": "2023-07-01T18:30:00.000+00:00",
    "publishedby": "system"
}
```

### Create Article

**Endpoint:** `POST /articles`

**Description:** This endpoint allows creating a new news article.

**Request Format:**
```json
 {
    "id": 1,
    "title": "Article 1",
    "summary": "Lorem ipsum dolor sit amet",
    "content": "Lorem ipsum dolor sit amet",
    "featured": true,
    "category": "political",
    "publisheddate": "2023-07-01T18:30:00.000+00:00",
    "publishedby": "system"
}
```

**Response Format:**
```json
 {
    "id": 1,
    "title": "Article 1",
    "summary": "Lorem ipsum dolor sit amet",
    "content": "Lorem ipsum dolor sit amet",
    "featured": true,
    "category": "political",
    "publisheddate": "2023-07-01T18:30:00.000+00:00",
    "publishedby": "system"
}
```


## How to Use the Application

1. Start the backend server by running the Spring Boot application. The server will be accessible at `http://localhost:8080/api`.

2. Use an API client (e.g., cURL, Postman) to make HTTP requests to the API endpoints described above.

3. To retrieve a list of all articles, send a GET request to `http://localhost:8080/api/articles`.

4. To retrieve a specific article by ID, send a GET request to `http://localhost:8080/api/articles/getArticleById/{id}`, replacing `{id}` with the actual ID of the article.

5. To create a new article, send a POST request to `http://localhost:8080/api/articles` with the required request payload.

6. To update an existing article, send a PUT request to `http://localhost:8080/api/articles/getArticleById/{id}` with the required request payload and replace `{id}` with the ID of the article to update.

7. To delete an article, send a DELETE request to `http://localhost:8080/api/articles/getArticleById/{id}`, replacing `{id}` with the ID of the article to delete.

Note: Make sure to replace `localhost:8080` with the appropriate hostname and port if your backend server is running on a different address.

That's it! You can now interact with the News Website application using the provided API endpoints.

Please refer to the API documentation above for more details on the request and response formats for each endpoint.


