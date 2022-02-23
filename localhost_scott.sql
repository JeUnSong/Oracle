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

