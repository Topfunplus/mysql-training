
-- ROW_NUMBER、RANK、DENSE_RANK
-- 
-- 从employee表中选择部门名称(dname)、员工姓名(ename)、薪水(salary)以及一个基于部门和薪水排序的行号(rk) --
SELECT dname, ename, salary, ROW_NUMBER() OVER (
        PARTITION BY
            dname
        ORDER BY salary DESC
    ) AS `rk`
FROM employee;

SELECT dname, ename, eid, salary, RANK() OVER (
        PARTITION BY
            dname
        ORDER BY salary DESC
    ) AS `rk`
FROM employee;

SELECT dname, ename, eid, salary, DENSE_RANK() OVER (
        PARTITION BY
            dname
        ORDER BY salary DESC
    ) AS `rk`
FROM employee

-- 查询employee表中的部门名称(dname)、员工姓名(ename)、员工编号(eid)、薪水(salary)以及一个基于薪水排序的行号(rk) --
SELECT dname, ename, eid, salary, DENSE_RANK() OVER (
        ORDER BY salary DESC
    ) AS `rk`
from employee;