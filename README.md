# README

This is a Rails API application that implements a social media platform, which allows users to create posts and interact with other users by commenting and liking their posts. It is built using the Devise Token Auth gems for authentication and authorization

Getting Started
To get started with the app, clone the repo and then install the needed gems:
  bundle install --without production

Next, migrate the database:
  rails db:migrate

You can then run the app in a local server:
  rails server
  
API Endpoints
The following are the API endpoints that are available in the application:

User Authentication
POST /auth/sign_up - sign up a new user
POST /auth/sign_in - sign in an existing user
DELETE /auth/sign_out - sign out a user
GET /auth/validate_token - validate the token of an authenticated user
Posts
GET /posts - retrieve all posts
POST /posts - create a new post
GET /posts/:id - retrieve a specific post
PUT /posts/:id - update a specific post
DELETE /posts/:id - delete a specific post
Comments
POST /posts/:post_id/comments - create a new comment on a post
PUT /posts/:post_id/comments/:id - update a specific comment on a post
DELETE /posts/:post_id/comments/:id - delete a specific comment on a post
Likes
POST /posts/:post_id/likes - like a post
DELETE /posts/:post_id/likes/:id - unlike a post
Authentication and Authorization
To access any of the API endpoints, you must first sign up and then sign in using your email and password. Upon successful sign in, you will receive an access token, which must be included in the headers of all subsequent API requests using the following format:

  Authorization: Bearer ACCESS_TOKEN
  
Additionally, certain API endpoints require that the user is authorized to perform certain actions, such as updating or deleting a post. In these cases, the user must be the owner of the post or have admin privileges.

Conclusion
This is a basic social media API built with Ruby on Rails, Devise, and Devise Token Auth. Feel free to modify or extend it to suit your needs.



Things you may want to cover:

* Ruby version-3.0.1
* 
* Rails version -7.0.4.1

* System dependencies-Ubuntu(22.04)

* Configuration-RAM(8GB),Processor i3

* Database creation-Postgresql

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
