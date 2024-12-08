-- 1) Creating table6.

create table user_activity(
user_id int primary key,
activity_status varchar(15),
last_login date,
foreign key (last_login) references user_logs(last_login)
);

-- 2) Inserting values inside Table6.

INSERT INTO user_activity(user_id,activity_status,last_login)
VALUE(301,'Active','2024-11-01'),
(302,'Inactive','2024-09-25'),
(303,'Active','2024-11-05'),
(304,'Inactive','2024-10-01'),
(305,'Active','2024-11-03');

-- 3) Retrieve Table6
 
select * from user_activity;
