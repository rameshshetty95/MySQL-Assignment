-- 1) creating Table3.

create table user_logs(
user_id int,
last_login date,
activity_status varchar(20) );

-- Inserting values inside Table3.

INSERT INTO user_logs(user_id,last_login,activity_status)
VALUES(301,'2024-11-01','Active'),
(302,'2024-09-25','Inactive'),
(303,'2024-11-05','Active'),
(304,'2024-10-01','Inactive'),
(305,'2024-11-03','Active') ;

-- 3)Retrieve Table3

select * from user_logs;

ALTER TABLE user_logs ADD INDEX (last_login);