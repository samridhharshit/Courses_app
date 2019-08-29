create DATABASE Courses;
show databases

USE Courses;

create table courses(
course_name varchar(50) not null,
course_id varchar(20) not null,
rating int not null,
price int not null,
release_date date,
description varchar(200),
primary key(course_name)
);
desc courses;

drop table courses;

create table courses(
course_name varchar(50) not null,
course_id varchar(20) not null,
rating int not null,
price int not null,
release_date date,
description varchar(200),
image_link varchar(500) not null,
primary key(course_id)
);

desc courses;

drop table courses;

create table courses(
course_name varchar(50) not null,
course_id int not null,
rating int not null,
price int not null,
release_date date,
description varchar(200),
image_link varchar(500) not null,
primary key(course_id)
);

desc courses;

drop table courses;

create table courses(
course_name varchar(50) not null,
course_id int not null,
rating int not null,
price int not null,
release_date date,
description varchar(5000),
image_link varchar(500) not null,
primary key(course_id)
);

desc courses;

insert into courses values('java', 1, 4, 2400, '2007-2-4', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','java.png');

select * from courses;

insert into courses values('python', 2, 3, 1400, '2007-2-4', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','python.jpg');

select * from courses;

insert into courses values('javascript', 3, 5, 5400, '2007-3-1', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','javascript.png');

select * from courses;

insert into courses values('full-stack', 4, 4, 5400, '2007-3-15', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','full-stack.jpg');

select * from courses;

insert into courses values('React', 5, 4, 3400, '2007-4-15', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','react.png');

select * from courses;


insert into courses values('nodeJs', 6, 5, 6400, '2007-6-25', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','nodejs.png');

select * from courses;


insert into courses values('Web-Design', 7, 3, 900, '2007-7-28', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','design.jpg');

select * from courses;


insert into courses values('MERN-stack', 8, 4, 1400, '2007-8-3', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','mern.png');
	
select * from courses;


insert into courses values('MEAN-stack', 9, 3, 1000, '2007-8-3', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','mean.png');

select * from courses;


insert into courses values('React-Native', 10, 4, 1200, '2007-9-15', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','native.png');

select * from courses;

insert into courses values('Bootstrap', 11, 5, 2000, '2007-10-1', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','bootstrap.jpg');

select * from courses;

select user();

use Courses
