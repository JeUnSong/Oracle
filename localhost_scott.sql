select * from emp;

select empno,ename,job from emp;

select empno,ename, deptno from emp;

select distinct deptno from emp;

select distinct job, deptno from emp;

select all job, deptno from emp;

select ename, sal, sal*12+comm as salary from emp;

select *
    from emp
    order by sal;
    
select * from emp order by sal desc;

select * from emp order by deptno asc, sal desc;

select ename,deptno, sal
from emp;

select ename,deptno, sal
from emp order by deptno, sal desc;

select * from emp where deptno = 30 or deptno=10;

select * from emp where deptno = 30
and job = 'SALESMAN';

--id가 hkd , pw 1234인 회원검색 (과거의 예)
--select *
--from member
--where id='hkd' and pw='1234';


select * from emp where sal >= 3000;

select * from emp where ename >= 'F';

select * from emp where job != 'SALESMAN';

select * 
from emp 
where not sal = 3000;

select *
from emp
where job in ('MANAGER', 'SALESMAN' , 'CLERK');

select *
from emp
where job not in ('MANAGER', 'SALESMAN' , 'CLERK');

select *
from emp
where sal between 2000 and 3000;

select *
from emp
where ename like 'S%';

select *
from emp
where ename like '%S';

select *
from emp
where ename like '%S%';

select *
from emp
where ename like '__L%';

-- _나 % 가 들어가는 검색어를 검색하는경우
-- 예) 'A_A'
select*
from emp
where ename like 'A\_A' escape '\';

select *
from emp
where comm is null;

select *
from emp
where comm is not null;

-- Asia
create table sale_asia(
    name varchar(20),
    ea number,
    sdate date default sysdate
);
insert into sale_asia(name,ea) values('소나타',10);
insert into sale_asia(name,ea) values('EV6',20);
insert into sale_asia(name,ea) values('그랜저',30);
select *
from sale_asia;
-- America
create table sale_america(
    name varchar(20),
    ea number,
    sdate date default sysdate
);
insert into sale_america(name,ea) values('그랜저',30);
insert into sale_america(name,ea) values('제네시스',50);
select *
from sale_america;

commit;

select name, ea
from sale_asia
union all
select name, ea
from sale_america
order by ea;

select name, ea
from sale_asia
intersect
select name, ea
from sale_america
order by ea;
