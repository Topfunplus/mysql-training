#创建表格
USE springtest;

create table employee(
                         dname varchar(20), -- 部门名
                         eid varchar(20),
                         ename varchar(20),
                         hiredate date, -- 入职日期
                         salary double -- 薪资
);
# 插入数据
insert into employee values('研发部','1001','刘备','2021-11-01',3000);

insert into employee values ( '研发部', '1002', '关羽', '2021-11-02', 5000 );

insert into employee values ( '研发部', '1003', '张飞', '2021-11-03', 7000 );

insert into employee values ( '研发部', '1004', '赵云', '2021-11-04', 7000 );

insert into employee values ( '研发部', '1005', '马超', '2021-11-05', 4000 );

insert into employee values ( '研发部', '1006', '黄忠', '2021-11-06', 4000 );

insert into employee values ( '销售部', '1007', '曹操', '2021-11-01', 2000 );

insert into employee values ( '销售部', '1008', '许褚', '2021-11-02', 3000 );

insert into employee values ( '销售部', '1009', '典韦', '2021-11-03', 5000 );

insert into employee values ( '销售部', '1010', '张辽', '2021-11-04', 6000 );

insert into employee values ( '销售部', '1011', '徐晃', '2021-11-05', 9000 );

insert into employee values ( '销售部', '1012', '曹洪', '2021-11-06', 6000 );