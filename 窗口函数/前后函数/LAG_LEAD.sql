-- 查询前1名同学的成绩和当前同学成绩的差值
-- 返回位于当前行的前n行（LAG(expr,n)）或后n行（LEAD(expr,n)）的expr的值
select
    dname,
    ename,
    hiredate,
    salary,
    lag(hiredate, 1, '2000-01-01') over (
        partition by
            dname
        order by hiredate
    ) as last_1_time,
    lag(hiredate, 2) over (
        partition by
            dname
        order by hiredate
    ) as last_2_time
from employee;