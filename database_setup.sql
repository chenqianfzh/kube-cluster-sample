--
-- Create main database
--
-- create database kube;
-- This will be created by an environment property to the kube.

--
-- Use main database
--
use kube;

--
-- Table for images that are stored
--
create table images(
    id int not null auto_increment primary key,
    path varchar(255) not null,
    person int,
    status int
);

--
-- Person table which stores known people
--
create table person(
    id int not null auto_increment primary key,
    name varchar(255) not null
);

--
-- Person images are images associated with known people
--
create table person_images(
    id int not null auto_increment primary key,
    image_name varchar(255),
    person_id int
);

--
-- Priming the known people table with some data
--
insert into person (name) values('Hannibal');
insert into person (name) values('Skarlso');
insert into person (name) values('John Doe');
insert into person (name) values('Gergely');
insert into person (name) values('Audrey Hepburn');
insert into person (name) values('Taylor Swift');

--
-- Priming known people images table with some data
--
insert into person_images (image_name, person_id) values ('hannibal_1.jpg', 1);
insert into person_images (image_name, person_id) values ('hannibal_2.jpg', 1);
insert into person_images (image_name, person_id) values ('skarlso_1.jpg', 2);
insert into person_images (image_name, person_id) values ('skarlso_2.jpg', 2);
insert into person_images (image_name, person_id) values ('john_doe_1.jpg', 3);
insert into person_images (image_name, person_id) values ('gergely_01.jpg', 4);
insert into person_images (image_name, person_id) values ('audrey_1.jpg', 5);
insert into person_images (image_name, person_id) values ('taylor_1.jpg', 6);
