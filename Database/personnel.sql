drop database if exists personnel;
create database personnel;
use personnel;

create table
DEPT(
DEPTNO int(2) not null,
DNAME varchar(30),
LOC varchar(30),
primary key(DEPTNO)
);
insert into
DEPT
(DEPTNO, DNAME, LOC)
values
(50, 'ΠΩΛΗΣΕΙΣ', 'ΑΘΗΝΑ'),
(60, 'ΛΟΓΙΣΤΗΡΙΟ', 'ΑΘΗΝΑ'),
(70, 'ΜΙΣΘΟΔΟΣΙΑ', 'ΒΟΛΟΣ');

create table
JOB(
JOBCODE int(3) not null,
JOB_DESCR varchar(30),
SAL int(4),
primary key(JOBCODE)
);
insert into
JOB
(JOBCODE, JOB_DESCR, SAL)
values
(100, 'ΠΩΛΗΤΗΣ', 2200),
(200, 'ΑΝΑΛΥΤΗΣ', 2000),
(300, 'ΧΕΙΡΙΣΤΗΣ', 1000);

create table
EMP(
EMPNO int(2) not null,
NAME varchar(30),
JOBNO int(3) not null,
DEPTNO int(2) not null,
COMM int(3),
primary key(EMPNO),
foreign key(DEPTNO) references DEPT(DEPTNO),
foreign key(JOBNO) references JOB(JOBCODE)
);
insert into
EMP
(EMPNO, NAME, JOBNO, DEPTNO, COMM)
values
(10, 'ΣΠΥΡΟΥ', 100, 50, 450),
(20, 'ΧΡΗΣΤΟΥ', 200, 50, NULL),
(30, 'NIKOY', 300, 60, NULL),
(40, 'ΣΠΥΡΟΥ', 200, 50, NULL);


