-- SUM,AVG,MIN,MAX 聚合函数

-- 查询小于等于当前薪资（salary）的比例
-- 这段 SQL 代码的作用是从 employee 表中选择部门名称 (dname)、
-- 员工姓名 (ename)、工资 (salary)，以及一个计算列 c1。
-- c1 列是使用窗口函数 sum 计算的，它对每个部门 (dname) 内的工资进行分区，并在每个分区内按工资排序，然后计算当前行及其前两行的工资总和。
select dname, ename, salary, sum(salary) over (
        partition by
            dname
        order by salary rows between 2 preceding
            and current row
    ) as c1
from employee;