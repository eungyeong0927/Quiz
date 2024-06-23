create database practice default character set utf8mb4 collate utf8mb4_unicode_ci;
use practice;

create table member(
id varchar(20) primary key,
name varchar(5) not null,
age int,
gender varchar(2) not null,
email varchar(50),
promotion varchar(2) default 'x'
);
desc member;

alter table member drop age;
alter table member modify id varchar(10);
alter table member add interrest varchar(100);

create table user(
id varchar(10) not null primary key,
pw varchar(20) not null,
name varchar(5) not null,
gender enum('F', 'M', '') default '',
birthday DATE not null,
age int(3) not null default 0

);
desc user;

insert into user values
('hong1234', '8o4bkg', '홍길동', 'M', '1990-01-31', 33 ),
('sexysung','87awjkdf','성춘향','F','1992-03-31',31),
('power70', 'qxur8sda','변사또', 'M','1970-05-02',53 ),
('hanjo','jk48fn4', '한조', 'M', '1984-10-18',39),
('widowmaker', '38ewifh3', '위도우', 'F', '1976-06-27',47),
('dvadva', 'k3f3ah','송하나','F', '2001-06-03',22),
('jungkrat', '4ifha7f','정크랫','M', '1999-11-11',24);
select * from user;

select * from user order by birthday;
select * from user where gender='M' order by name desc;
select id, name from user where birthday>='1990-01-01';
select * from user where birthday like '_____06___' order by birthday;
select * from user where gender='M' and birthday like '1970%';
select * from user order by age desc limit 3;
select * from user where age between 25 and 50;
update user set pw=12345678 where id='hong1234';
delete from user where id='jungkrat';
