INSERT INTO course_mst

VALUES
	(0,1,1,1),
	(0,2,1,2),
	(0,3,1,2),
	(0,1,2,2),
	(0,3,2,1),
	(0,1,3,1),
	(0,1,4,2);

INSERT INTO status_mst
	
VALUES 
	(0,'수강'),
	(0,'수료');
	
INSERT INTO emp_mst

VALUES
	(0,'문성현'),
	(0,'윤대휘'),
	(0,'문자영'),
	(0,'정규민');
	
INSERT INTO student_mst
	
VALUES 
	(0,'신경수'),
	(0,'고희주'),
	(0,'장건녕'),
	(0,'문승주');
	
INSERT INTO subject_mst

VALUES
	(0,'java'),
	(0,'python'),
	(0,'c');
	
INSERT INTO student_dtl

VALUES
	(0,1),
	(0,2),
	(0,3),
	(0,4);

SELECT 
	cm.id AS '순번',
	sbm.name AS '과목명',
	sm.name AS '수강생명',
	em.name AS '담당자명',
	stm.name AS '상태'
	
FROM
	course_mst cm
	LEFT OUTER JOIN subject_mst sbm ON(sbm.id = cm.subject_id)
	LEFT OUTER JOIN student_mst sm ON(sm.id = cm.student_id)
	LEFT OUTER JOIN student_dtl sd ON(sd.id = sm.id)
	LEFT OUTER JOIN emp_mst em ON(em.id = sd.emp_id)
	LEFT OUTER JOIN status_mst stm ON(stm.id = cm.status_id);

/*학생 기준*/	
SELECT
	sm.id AS '순번',
	sbm.name AS '과목명',
	sm.name AS '수강생명',
	em.name AS '담당자명',
	stm.name AS '상태'
FROM
	student_mst sm
	LEFT OUTER join course_mst cm ON(cm.student_id = sm.id)
	LEFT OUTER JOIN subject_mst sbm ON(sbm.id = cm.subject_id)
	LEFT OUTER JOIN student_dtl sd ON(sd.id = sm.id)
	LEFT OUTER JOIN emp_mst em ON(em.id = sd.emp_id)
	LEFT OUTER JOIN status_mst stm ON(stm.id = cm.status_id)

ORDER BY /*알파벳 순서*/ /*순번*/
	sm.id, /*table 에 넣은 순서대로 정렬*/
	sbm.id;


	