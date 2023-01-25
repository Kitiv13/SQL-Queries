show databases;
use student;
select * from courses1;
create table general
(id int(11) not null primary key,
fname varchar(55) null,
lname varchar(55) null,
age int(3) null,
gender varchar(10) null);
show tables;
desc general;
insert into general values (1, "anna", "smith", 18, "F");
insert into general values (2, "jhon", "smith", 19, null);
select * from general;
insert into general values (3, "nicole", "stock", 19, "M");
insert into general values (4, "alan", "po", 21, null);
insert into general values (5, "peter", "pen", 21, null);
insert into general values (6, "jack", "london", 24, "M");
select * from general;
select * from courses1;
select courses1.faculty, general.fname, general.lname from courses1 join general on courses1.id = general.id;
select courses1.number, general.fname, general.gender from courses1 left join general on courses1.id = general.id;
select courses1.id, general.fname, general.lname, general.gender, courses1.faculty from courses1 right join general on courses1.id = general.id;
select fname, lname, gender, id from general where age in (select age from general where id>1 and age>=21);