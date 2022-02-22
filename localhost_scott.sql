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

--id�� hkd , pw 1234�� ȸ���˻� (������ ��)
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

-- _�� % �� ���� �˻�� �˻��ϴ°��
-- ��) 'A_A'
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
insert into sale_asia(name,ea) values('�ҳ�Ÿ',10);
insert into sale_asia(name,ea) values('EV6',20);
insert into sale_asia(name,ea) values('�׷���',30);
select *
from sale_asia;
-- America
create table sale_america(
    name varchar(20),
    ea number,
    sdate date default sysdate
);
insert into sale_america(name,ea) values('�׷���',30);
insert into sale_america(name,ea) values('���׽ý�',50);
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

select ename, upper(ename), lower(ename), initcap(ename)
from emp;

select ename, length(ename)
from emp;

select length('�ѱ�'), lengthb('�ѱ�')
from dual; -- dual�� ���� ���̺��� �ƴ� ������ ���̺�.

select sysdate
from dual;

select job, substr(job,1,2), substr(job,3,2), substr(job,5)
from emp;

select instr('HELLO, ORACLE!', 'L') as instr_1,
       instr('HELLO, ORACLE!', 'L', 5) as instr_2,
       instr('HELLO, ORACLE!', 'L',2,2) as instr_3
       from dual;
       
select '010-1234-5678' as replace_before,
        replace('010-1234-5678','-',' ' ) as replace_1,
        replace('010-1234-5678','-') as replace_2
        from dual;
        
        
select ename, hiredate
from emp
where hiredate >= 82;

select *
from emp
where deptno = 10;

select *
from emp
where deptno = 10
   or deptno = 20;

select *
from emp
order by deptno, hiredate desc;

select ename, hiredate
from emp
where hiredate  between '70/01/01' and '81/12/31';

commit;
