/* 
Create
Read
Update
Delete
INSERT(추가) =C
SELECT(조회) =R
UPDATE(수정) =U
DELETE(삭제) =D
순서 맞춰라
*/

INSERT INTO product_mst
/*	(id, product_name, product_price) 생락가능 */
VALUES
	(0, '스타벅스 블랙 머그컵', 15000),
	(0, '스타벅스 화이트 머그컵', 20000),
	(0, '스타벅스 블루 머그컵', 25000); order_mstproduct_mstuser_mst

SELECT
	id, 
	product_name, 
	product_price 
FROM 
	product_mst;

INSERT INTO student_mst
VALUES
	(0, '임지현', 1 , 80),
	(0, '신경수', 2 , 90),
	(0, '고희주', 3 , 75),
	(0, '문승주', 1 , 85),
	(0, '장건녕', 2 , 95),
	(0, '박수현', 3 , 90),
	(0, '황석민', 1 , 80),
	(0, '박준현', 2 , 85),
	(0, '이승아', 3 , 90),
	(0, '김수현', 1 , 75);
	
SELECT
	id,
	`name`,
	student_year,
	score
FROM
	student_mst;
	
SELECT
	id,
	`name`,
	student_year,
	score
FROM
	student_mst	
WHERE
	student_year = 1 /* = equal 대입은 없다. */
	AND score > 79;
	
SELECT
	id,
	`name`,
	student_year,
	score
FROM
	student_mst	
WHERE
	student_year = 1 /* = equal 대입은 없다. */
	or score > 79;
	
SELECT
	id,
	`name`,
	student_year,
	score
FROM
	student_mst	
WHERE
	student_year = 1 /* = equal 대입은 없다. */
	and score > 80 OR score = 80;
	
SELECT
	id,
	`name`,
	student_year,
	score
FROM
	student_mst	
WHERE /* = equal 대입은 없다. */
	student_year = 1 and score > 80 
	OR (student_year = 3 and score = 75);
	
SELECT
	id,
	`name`,
	student_year,
	score
FROM
	student_mst	
WHERE 
	`name` LIKE '%수%' 
	AND `name` not LIKE'%수' ;
	
SELECT
	id,
	`name`,
	student_year,
	score
FROM
	student_mst	
WHERE 
	not student_year = 3;
	
SELECT
	id,
	`name`,
	student_year,
	score
FROM
	student_mst	
WHERE 
	student_year IN(1,2);
	
SELECT
	id,
	`name`,
	student_year,
	score
FROM
	student_mst	
WHERE 
	student_year not IN(1,2);
	
SELECT
	id,
	`name`,
	student_year,
	score
FROM
	student_mst
	
WHERE
	score BETWEEN 80 AND 90;
	
SELECT
	id,
	`name`,
	student_year,
	score
FROM
	student_mst
	
WHERE
	score not BETWEEN 80 AND 90;
	
SELECT
	id,
	`name`,
	student_year,
	score
FROM
	student_mst
	
WHERE
	`name` IS NULL;
	
	SELECT
	id,
	`name`,
	student_year,
	score
FROM
	student_mst
	
WHERE
	`name` IS not NULL;


/*---------------------------------------------------------*/

UPDATE student_mst SET score = 80 WHERE `name` = '박준현';

/*2학년 중에서 성적이 80~90 사이인 학생들의 점수를 100으로 바꿔라*/

UPDATE 
	student_mst 

SET 
	score = 100

WHERE
	student_year = 2 
	AND score BETWEEN 80 AND 90;
	
/*---------------------------------------------*/

DELETE
FROM
	student_mst
	
WHERE
	score < 80;


