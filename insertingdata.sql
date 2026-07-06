use studentsdb;
insert into  studentstb(studentname, studentage,gender)
values
('Arun','21','male'),
('karthi','20','male'),
('harirs','21','male'),
('ashwanth',21,'male');
insert into coursestb(coursename)
values 
('mathematics'),
('english'),
('chemistry'),
('physics');
insert into enrollment(studentid,courseid)
values
(1,1),
(2,2),
(3,3),
(4,4);

select *from studentstb


