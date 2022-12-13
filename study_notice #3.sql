SELECT
	nm.title,
	nm.content,
	wm.name,
	ni.img_name
FROM
	study_notice_mst nm
	LEFT OUTER JOIN study_writer_mst wm ON(wm.id = nm.writer_id)
	LEFT OUTER JOIN study_notice_
	img ni ON(ni.notice_id = nm.id);
	
SELECT
	*
FROM
	user_mst um /* um 이라고 부르겠다.*/
	
	LEFT OUTER JOIN user_dtl ud ON (user_mst.id = user_dtl.id); /* ud 라고 부르겠다.*/
	
SELECT
	  *
FROM
	order_mst om
	LEFT OUTER JOIN order_dtl od ON (od.order_id = om.id) /*od 가 이것인것 이라는 조건?*/
	LEFT OUTER JOIN user_mst um ON(um.id = om.user_id);
	
SELECT 
	*

FROM
	user_mst um
	LEFT OUTER JOIN order_mst om ON(om.user_id = um.id)
	LEFT OUTER JOIN order_dtl od ON(od.order_id = om.id);



