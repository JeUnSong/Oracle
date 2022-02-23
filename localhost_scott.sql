select 'Oracle',
        lpad('Oracle',10,'#') as lpad_1,
        rpad('Oracle',10,'*') as rpad_1,
        lpad('Oracle',10) as lpad_2,
        rpad('Oracle',10) as rpad_2
        from dual;
        
select concat(empno, ename),
       concat(empno, concat(':',ename))
from emp;

select 'a'||trim('              b              ')||'c',
       'a'||ltrim('              b              ')||'c',
       'a'||rtrim('              b              ')||'c'
from dual;

select round(1234.5678),
       round(1234.5678,1),
       trunc(1234.5678),
       trunc(1234.5678,1),
       ceil(1234.5678),
       floor(1234.5678),
       mod(15,6)
from dual;

select sysdate, add_months(sysdate,3)
from dual;

select empno, ename, hiredate, sysdate,
months_between(sysdate, hiredate)
from emp;

select sysdate,round(sysdate, 'yyyy')
from dual;

commit;

select to_char(sysdate, 'yyyy-mm-dd-hh24:mi:ss')
from dual;

select ename, hiredate, to_char(hiredate, 'yyyy-mm-dd-hh24:mi:ss')
from emp;

select ename, hiredate
from emp
where hiredate  between '70/01/01' and '81/12/31';

select ename, sal,
       to_char(sal, '$999,999') as 달러,
       to_char(sal, 'l999,999') as 원
from emp;

select  to_number('1,300', '999,999') - to_number('1,500', '999,999'),
        to_date('2017-07-14','YYYY-MM-DD')
from dual;

select sysdate, to_char(sysdate,'q')
from dual;

select ename, to_char(hiredate, 'q')
from emp;

select ename, sal+nvl(comm,0)
from emp;

select ename,sal, nvl(comm,0) as comm, nvl2(comm,'o','x') as iscomm
from emp;

select ename, job,
       decode(job,'MANAGER' , sal*1.1,
                  'SALESMAN', sal*1.05,
                  'ANALYST' , sal,
                   sal*1.03),sal         
from emp;


select ename, deptno,
       decode(deptno,'10','accoounting',
                     '20','research',
                     '30','sales',
                     '40','operations') as department
from emp;

select ename,job,
       case job
            when 'MANAGER' then sal*1.1
            when 'SALESMAN' then sal*1.05
            when 'ANALYST' then sal
            else sal*1.03
            end as upsal
from emp;

select ename,job,sal,
    case job 
        when 'MANAGER' then sal*1.1
        when 'SALESMAN' then sal*1.05
        when 'ANALYST' then sal
        else sal*1.03
    end as upsal
from emp;

select ename, sal,
       case
           when sal>4000 then'레벨 1'
           when sal>3000 then'레벨 2'
           when sal>2000 then'레벨 3'
           else'레벨 0'
           end as sal_level
from emp;

select sum(sal)
from emp;

select round (avg(sal),3)
from emp;

select count(sal),
       avg(sal),
       max(sal),
       min(sal),
       sum(sal)
from emp;


select * from dept;

select '10' as deptno , count(*) from emp where deptno=10;
select '20' as deptno , count(*) from emp where deptno=20;
select '30' as deptno , count(*) from emp where deptno=30;
select '40' as deptno , count(*) from emp where deptno=40;

select deptno, count(*)
from emp
group by deptno;

select deptno,job, count(*)
from emp
group by deptno, job
order by deptno;

select deptno,job, avg(sal)
from emp
group by deptno, job
having avg(sal) >= 2000
order by deptno;

select mgr, count(*) as 부하직원수
from emp
where mgr is not null
group by mgr;

commit;