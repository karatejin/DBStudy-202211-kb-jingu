select /*순서 일치*/ 
	name,
    email,
    0 as score
from
	user_dtl
where
	name = '김준일'

union /* union 중복 제거 해서 보여줌  unionall 중복제거 안하고 보여줌*/
select
	name,
    null as email,
    score
from
	score_mst    
where
	score > 80 ;