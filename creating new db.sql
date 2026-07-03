create database studentsdb;
use studentsdb;
create table studentstb(
studentid int auto_increment primary key,
studentname varchar(40),
studentage int ,
gender varchar(10));

create table coursestb(
courseid int auto_increment primary key,
coursename varchar(40));

DROP TABLE enrollment;
create table enrollment(
enrollmentid int auto_increment primary key,
studentid int,
courseid int ,
enrollmentdate date,
foreign key (studentid) references studentstb(studentid), 
foreign key (courseid) references coursestb(courseid));

