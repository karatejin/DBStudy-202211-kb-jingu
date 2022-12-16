/*
	인덱스 (index)
    테이블의 동작속도(조회)를 높여주는 자료구조
*/

insert into delivery_mst
values
	('2212160001', '부산 동래구 교대역점'),
	('2212160002', '부산 동래구 교대역점'),
	('2212160003', '부산 동래구 교대역점'),
	('2212160004', '부산 동래구 교대역점');
    
select * from delivery_mst;

create index order_id on delivery_mst(`주문번호`); /*(,) 두개를 하나의 조함으로 본다*/

show index from delivery_mst; /*주문번호에다가 인덱스를 주었다.*/