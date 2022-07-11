select 
distinct
u.email,
u.name,
max(case when (m.meta_key='ip_address') then UserColumn2 else NULL end) as 'ip_address',
max(case when (m.meta_key='referrer') then UserColumn2 else NULL end) as 'referrer',
max(case when (m.meta_key='user_agent') then UserColumn2 else NULL end) as 'user_agent',
i.path
from tbl_user as u 
RIGHT JOIN tbl_users_meta as m ON m.user_id u.id 
RIGHT JOIN tbl_users_images as i ON i.user_id i.id 
GROUP BY u.id
