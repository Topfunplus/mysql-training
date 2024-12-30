-- 返回第一个（FIRST_VALUE(expr)）或最后一个（LAST_VALUE(expr)）expr的值
-- 需求：截止到当前，按照日期排序查询第1个入职和最后1个入职员工的薪资
-- 代码如下（示例）：

-- 这段 SQL 代码从 employee 表中选择了一些列，并使用了窗口函数 first_value 来获取每个部门中按雇佣日期排序的第一个工资值。具体来说：

-- dname: 部门名称
-- ename: 员工姓名
-- hiredate: 雇佣日期
-- salary: 工资
-- first_value(salary) over (partition by dname order by hiredate) as first: 使用窗口函数 first_value 获取每个部门中按雇佣日期排序的第一个工资值，并将其命名为 first
-- 窗口函数 first_value 的工作原理如下：

-- partition by dname: 按部门分区，即每个部门的数据将被单独处理。
-- order by hiredate: 在每个部门内按雇佣日期排序。
-- first_value(salary): 获取排序后每个分区中的第一个工资值。
-- 最终，这个查询将返回每个员工的部门名称、姓名、雇佣日期、工资以及该员工所在部门中最早雇佣的员工的工资。
select
    dname,
    ename,
    hiredate,
    salary,
    first_value(salary) over (
        partition by
            dname
        order by hiredate ASC
    ) as first
from employee;