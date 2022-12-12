SELECT
	course_id,
	SUM(score) AS `총합`,
	AVG(score) AS `평균`

FROM
	score_mst
GROUP BY /*같은 것을 묶어준다.*/
	course_id

HAVING 
 `총합` >100;