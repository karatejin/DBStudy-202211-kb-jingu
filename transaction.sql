/*
TCL
1.commit 	- 트랜잭션 확정
2.rollback	- 트랜잭션 취소
3.savepoint	- 중간지점 저장
*/
set autocommit = 0;

select @@autocommit; 

create database `transaction_study`;
use transaction_study;

create table `transaction_study`.`emp_mst`(
	`id` int not null auto_increment,
    `name` varchar(15) default null,
    primary key(`id`)
    );
    
select @@autocommit;

start transaction;
savepoint p1;
insert into emp_mst
values
	(0,'김준일'),
	(0,'신경수'),
	(0,'고희주'),
	(0,'장건녕');
select * from emp_mst;

savepoint p2;

update emp_mst
set
	`name` = '문승주'
where
	id = 5;
    
rollback to p2;

select * from emp_mst;
    
select *from emp_mst;
rollback to p1;

select *from emp_mst;

commit; /*원하는 결과가 나오면 commit 커밋을 누르면 롤백인 안됨*/
/*start transaction을 실행 후 마지막에 commit 을 안해주면 날아간다.*/



