/*
계정생성 DDL
CREATE USER '계정아이디'@localhost identified by '비밀번호'; ->내부 IP접속
CREATE USER '계정아이디'@% identified by '비밀번호'; -> 외부 IP 접속
	>create user 'junil'@localhost idendtifed by 'root';
    > grant all privileges on *.* to junil@localhost;
    > flush privileges;



 DCL(권한관련)
 1. grant(데이터베이스, 테이블 사용자 권한 부여)
	- grant 권한 to 사용자 계정
    - grant 권한 on 객체명(데이터베이스.테이블명) to 사용자 계정 (특정 테이블, 데이터베이스에게 권한을 준다.)
		> grant all privileges ON subquery_study.board_mst TO root@localhost 내부 IP (현재 pc에서만 접근) (subquery_study.board_mst 에대한 권한을 부여한다.)
        > grant all privileges ON subquery_study.board_mst TO root@% -> 외부 IP(다른 pc 에서도 접근 가능)
        > grant all privileges ON subquery_study.board_mst TO root@200.100.%  => (해당 ip를 포함하고 있는 pc 에서만 접근가능)
 2. revoke(데이터베이스, 테이블 사용자 권한 회수)
	- revoke 권한 to 사용자 계정
    - revoke 권한 on 객체명(데이터베이스.테이블명) to 사용자 계정
    
		> revoke insert, update, create ON *.* TO root@localhost;(insert, update, create 권한해제) ( *.* 모든 데이터 베이스 모든 테이블)
		> revoke ALL ON *.* TO root@localhost;(모든 권한 해제)
*/

select @@autocommit

/*set autocommit =1; 활성화 
set autocommit =0; 비활성화*/