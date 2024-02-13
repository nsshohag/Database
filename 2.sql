create table student(
reg int primary key,
s_name varchar(30),
dept char(3),
cgpa double(3,2)
);
insert into student(reg,s_name,dept,cgpa) values
( 105,"A","CSE","3.25"),
( 103,"C","EEE","3.85"),
( 110,"B","CSE","3.58"),
( 100,"D","FET","3.4"),
( 107,"A","EEE","3.25"),
( 109,"B","SWE","3.5");
select *from student;
update student
set student.dept="CSE",reg="111" where dept not in("CSE","SWE","eee");
select *from student;
delete from student where reg=107;
delete from student where reg=999;
-- update student
-- set cgpa=0 where 1;
-- delete from student where cgpa;
select *from student;
select distinct dept from student;
select reg as REG_NAME,s_name as "NAME" from student;
select *from student where reg>110 and dept="CSE";
select "AAAAAAAAAA";
select *from student order by dept limit 2;
select "XXXXXXXXXX";
select *from student;
select dept,count(reg) from student group by dept;
select dept,max(cgpa) as MAX_CGPA from student group by dept order by dept;
select *from student;
select upper("Sadat");
select concat("REGISTRATION NO: ",reg," has got cgpa: ",cgpa) as cgpa_information from student;
select pow(2,3.0);
-- select *from student order by cgpa desc;