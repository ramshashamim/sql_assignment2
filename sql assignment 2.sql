
create database details;
use details;
create table student_details(
studentID int primary key ,
studentName varchar(30)
);
INSERT INTO student_details  VALUES(1001, "Mary"),(1002, "Jane"),(1003,"Daniel"),(1004,"Jack"),(1005,"Harlod");
select * from student_details;

create table course_details(
CourseID int ,
CourseName varchar(30),
studentID int 

);
alter table course_details add foreign key(studentID) references student_details(studentID);
insert into course_details values (5001, "PHP",1004), (5002,"JAVA",1001),(5003,"ASP.NET" ,1001),(5004,"RUBY",1002);
SELECT * FROM course_details;

create table teacher_detailsss (
TeacherID int ,
TeacherName varchar(30),
CourseID int 
 );
insert into teacher_detailsss values (3001, "JILL",5003), (3002,"GREUL",5002),(3003,"JEKINS" ,5001),(3004,"POLO",5004);
select * from teacher_detailsss;

-- Fetch all column's details by using join. --

select * from  student_details JOIN course_details ON student_details.studentID = course_details.studentID  
JOIN teacher_detailsss ON course_details.CourseID = teacher_detailsss.CourseID;

 -- Fetch the details of students who appeared in asp.net-- 
 
select student_details.studentID, student_details.studentName from student_details JOIN course_details ON student_details.studentID = course_details.studentID

JOIN teacher_detailsss ON course_details.CourseID = teacher_detailsss.CourseID WHERE course_details.CourseName = 'ASP.NET';

--  cross join, left join, right join and inner join --

-- Cross Join --
SELECT * FROM student_details CROSS JOIN course_details;

-- inner join --
select * from student_details inner join course_details on student_details.studentID = course_details.studentID;

-- Left Join --
select * from student_details left join course_details on student_details.studentID = course_details.studentID;



-- Right Join--
select * from student_details right join course_details on student_details.studentID = course_details.studentID;



