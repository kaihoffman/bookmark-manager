Makers Academy Week 4 challenge
----

**Bookmark manager**

**User story 1**
As a busy user of the internet,<br/>
So that I can see what I should be reading next,<br/>
I'd like to be able to see a display of my bookmarks.

**Domain Model 1**

![Domain-model 1](https://i.imgur.com/QCMsdxH.png)

**User story 2**
As a time-pressed user<br/>
So that I can save a website<br/>
I would like to add the site's address and title to bookmark manager


SET-UP
----
1. Clone this repository.
2. Database setup:
  - connect to ```psql```
  - in psql, create a database bookmark-manager as follows: ```CREATE DATABASE bookmark-manager;```
  - ensure you are in the correct database by running ```\c bookmark_manager;```
  - run the query saved in /db - ```01_create_bookmarks_table.sql```  
  - in psql, create a TEST database bookmark-manager-test as follows: ```CREATE DATABASE bookmark-manager-test;```
  - the test files (RSpec) will generate tables for the test database, but in case you want to create them manually, you need to: ```CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));``` in psql.
  
