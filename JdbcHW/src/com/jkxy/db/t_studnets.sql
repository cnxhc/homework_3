--安装好MySQL，完成以下要求：
--1、设计一个数据表，表名为t_students，分别含有stu_id，stu_name，stu_age，stu_gender,stu_adress等字段内容。
--2、使用SQL语句向数据表写入十条不同的数据
--3、使用SQL语句查询年龄大于15岁的男生
--4、使用SQL语句删除所有男生的数据
--注意：提交作业时要提交：
--1、建表语句；
--2、插入学生数据的十条SQL语句
--3、查询学生的SQL语句
--4、删除男生数据的SQL语句
--将所有的SQL语句保存在一个文本文件中，并注明每条语句的用途。

--如果表存在，先删除
drop table  if exists t_students;
--创建表
create table t_students(
	stu_id int not null auto_increment,
	stu_name varchar(20)  not null default '',
	stu_age int  not null,
	stu_gender varchar(2) not null default '',
	stu_address varchar(50)  default '',
primary key(stu_id)
)
engine=InnoDB
default charset=utf8;
desc t_students;
--插入10条不同的数据
insert into t_students values(1,'张三',22,'男','北京');
insert into t_students values(2,'王伟',10,'男','上海');
insert into t_students values(3,'马瑞',20,'女','苏州');
insert into t_students values(4,'黄红',14,'女','杭州');
insert into t_students values(5,'李密',15,'男','杭州');
insert into t_students values(6,'李思',16,'女','南京');
insert into t_students values(7,'周舟',18,'女','上海');
insert into t_students values(8,'黄小米',17,'男','北京');
insert into t_students values(9,'邓超',25,'男','深圳');
insert into t_students values(10,'徐良',21,'男','上海');
select * from t_students;
--查询年年大于15的男生
select * from t_students where stu_age>15 and stu_gender='男';
select * from t_students;
--删除所有男生的数据
delete from t_students where stu_gender='男';
select * from t_students;