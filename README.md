# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


rails new gym --database=postgresql
sudo -u postgres psql
create database gym_database;
rails generate scaffold Coach name:string sobrenome:string phone:string email:string username:string 
rails generate scaffold Membership name:string sobrenome:string phone:string email:string username:string 
rails generate scaffold Academy name:string phone:string email:string
rails db:migrate
rails g migration AddAcademiesToCoaches academy:references
rails g migration AddCoachesToMemberships coach:references# gym
