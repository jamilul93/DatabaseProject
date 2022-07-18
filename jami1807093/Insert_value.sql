insert into topics(t_id,title) values(11,'sports');
insert into topics(t_id,title) values(12,'fashion');
insert into topics(t_id,title) values(13,'clothing');
insert into topics(t_id,title) values(14,'business');
insert into topics(t_id,title) values(15,'politics');
insert into topics(t_id,title) values(16,'nature');
insert into topics(t_id,title) values(17,'polution');
insert into topics(t_id,title) values(18,'Education');
insert into topics(t_id,title) values(19,'sports');
insert into topics(t_id,title) values(20,'fashion');

insert into news(n_id,n_description,n_date,t_id)values(01,'a','21-jan-27',11);
insert into news(n_id,n_description,n_date,t_id)values(02,'b','21-feb-27',12);
insert into news(n_id,n_description,n_date,t_id)values(03,'c','21-mar-27',12);
insert into news(n_id,n_description,n_date,t_id)values(04,'d','21-jan-25',16);
insert into news(n_id,n_description,n_date,t_id)values(05,'e','21-jan-22',18);
insert into news(n_id,n_description,n_date,t_id)values(06,'f','21-oct-29',19);
insert into news(n_id,n_description,n_date,t_id)values(07,'g','21-jul-27',14);
insert into news(n_id,n_description,n_date,t_id)values(08,'f','21-jan-12',15);
insert into news(n_id,n_description,n_date,t_id)values(09,'i','21-jan-16',16);
insert into news(n_id,n_description,n_date,t_id)values(10,'j','21-dec-27',16);


insert into  subscribers (c_id,c_name,age,c_type) values(71,'amin',19,'child');
insert into  subscribers (c_id,c_name,age,c_type) values(72,'smin',24,'adult');
insert into  subscribers (c_id,c_name,age,c_type) values(73,'mamun',21,'adult');
insert into  subscribers (c_id,c_name,age,c_type) values(74,'pollock',23,'adult');
insert into  subscribers (c_id,c_name,age,c_type) values(75,'rafi',34,'adult');
insert into  subscribers (c_id,c_name,age,c_type) values(76,'mahim',66,'adult');
insert into  subscribers (c_id,c_name,age,c_type) values(77,'jami',42,'adult');
insert into  subscribers (c_id,c_name,age,c_type) values(78,'shammem',78,'senior_citizen');
insert into  subscribers (c_id,c_name,age,c_type) values(79,'mubarak',33,'adult');
insert into  subscribers (c_id,c_name,age,c_type) values(80,'simla',22,'adult');


insert into subscribes (n_id,c_id,reaction_type,comments_on) values(01,72,'like','good one');
insert into subscribes (n_id,c_id,reaction_type,comments_on) values(03,72,'love','good one');
insert into subscribes (n_id,c_id,reaction_type,comments_on) values(07,79,'love','good one');
insert into subscribes (n_id,c_id,reaction_type,comments_on) values(05,79,'like','good one');
insert into subscribes (n_id,c_id,reaction_type,comments_on) values(07,76,'dislike','bad one');
insert into subscribes (n_id,c_id,reaction_type,comments_on) values(04,78,'dislike','bad one');
insert into subscribes (n_id,c_id,reaction_type,comments_on) values(01,71,'angry','hateful');
insert into subscribes (n_id,c_id,reaction_type,comments_on) values(06,72,'love','good one');
insert into subscribes (n_id,c_id,reaction_type,comments_on) values(08,77,'like','good one');
insert into subscribes (n_id,c_id,reaction_type,comments_on) values(05,78,'angry','hatefull');



