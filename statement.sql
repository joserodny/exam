SELECT u.*,
case when m.meta_key = "ip_address" then m.meta_value end as ip_address,
case when m.meta_key = "referrer" then m.meta_value end as referrer,
case when m.meta_key = "user_agent" then m.meta_value end as user_agent,
i.url_path
FROM tbl_users AS u  
RIGHT JOIN tbl_users_meta AS m ON m.user_id = u.id
RIGHT JOIN tbl_users_images AS i ON m.user_id = i.id
