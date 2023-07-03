CREATE DATABASE news_website;
USE news_website;

CREATE TABLE articles (
  id INT AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  summary TEXT,
  content TEXT,
  featured boolean,
  category VARCHAR(50),
  image LONGBLOB,
  publishedDate DATE DEFAULT (CURRENT_DATE),
  publishedBy VARCHAR(50)
) ;  


INSERT INTO articles (title, summary, content,featured,category,image,publishedBy)
VALUES
  ('Article 1', 'Summary of Article 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',true,'political',LOAD_FILE('D:/images/bk-news.PNG'),'system'),
  ('Article 2', 'Summary of Article 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',false,'political',LOAD_FILE('D:/images/bk-news.PNG'),'system'),
  ('Article 3', 'Summary of Article 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',false,'political',LOAD_FILE('D:/images/bk-news.PNG'),'system'),
  ('Article 4', 'Summary of Article 4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',false,'political',LOAD_FILE('D:/images/bk-news.PNG'),'system'),
  ('Article 5', 'Summary of Article 5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',true,'political',LOAD_FILE('D:/images/bk-news.PNG'),'system'),
  ('Article 6', 'Summary of Article 6', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',false,'political',LOAD_FILE('D:/images/bk-news.PNG'),'system'),
  ('Article 7', 'Summary of Article 7', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',false,'political',LOAD_FILE('D:/images/bk-news.PNG'),'system'),
  ('Article 8', 'Summary of Article 8', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',false,'political',LOAD_FILE('D:/images/bk-news.PNG'),'system');

UPDATE `news_website`.`articles` SET `summary` = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam at ultrices lacus. Duis feugiat, urna in consectetur tincidunt, lorem velit tempus urna, at commodo lacus nunc eu nisi.' WHERE (`id` = '4');
UPDATE `news_website`.`articles` SET `summary` = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam at ultrices lacus. Duis feugiat, urna in consectetur tincidunt, lorem velit tempus urna, at commodo lacus nunc eu nisi.' WHERE (`id` = '5');
UPDATE `news_website`.`articles` SET `summary` = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam at ultrices lacus. Duis feugiat, urna in consectetur tincidunt, lorem velit tempus urna, at commodo lacus nunc eu nisi.' WHERE (`id` = '6');
UPDATE `news_website`.`articles` SET `summary` = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam at ultrices lacus. Duis feugiat, urna in consectetur tincidunt, lorem velit tempus urna, at commodo lacus nunc eu nisi.' WHERE (`id` = '7');
UPDATE `news_website`.`articles` SET `summary` = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam at ultrices lacus. Duis feugiat, urna in consectetur tincidunt, lorem velit tempus urna, at commodo lacus nunc eu nisi.' WHERE (`id` = '8');
UPDATE `news_website`.`articles` SET `summary` = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam at ultrices lacus. Duis feugiat, urna in consectetur tincidunt, lorem velit tempus urna, at commodo lacus nunc eu nisi.' WHERE (`id` = '1');
UPDATE `news_website`.`articles` SET `summary` = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam at ultrices lacus. Duis feugiat, urna in consectetur tincidunt, lorem velit tempus urna, at commodo lacus nunc eu nisi.' WHERE (`id` = '2');
UPDATE `news_website`.`articles` SET `summary` = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam at ultrices lacus. Duis feugiat, urna in consectetur tincidunt, lorem velit tempus urna, at commodo lacus nunc eu nisi.' WHERE (`id` = '3');

SELECT * FROM articles;
