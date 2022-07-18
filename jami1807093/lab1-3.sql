 describe  news ;
 describe  subscribers;
 describe  topics;
 describe  subscribes;

 select * from news;
 select * from subscribers;
 select * from topics;
 select * from subscribes;

 --add operation (adding column)
  Alter table news add temporary_column varchar(20);
  describe news ;
  select *from news;
  --drop operation (dropping column)
  Alter table news drop column temporary_column;
  describe news ;
  select * from news ;
  -- modify operation (modifying column data type)
  Alter table news modify n_description varchar(30);
  describe news;
  select * from news;
-- rename operation (renaming column)
 Alter table topics
 rename column title to top_title;
 describe topics;
 -- delete operation (deleting a row from news table)
    delete from news where n_id=1;
    select * from news ;
    insert into news(n_id,n_description,n_date,t_id)values(01,'a','21-10-22',11);
    select * from news ;
-- applying operation on field data 
   select (c_id/5) as c_id_divided_by_five from subscribers;

-- applying condition
 select reaction_type from subscribes where c_id=72;
 -- range search 
 select c_id,c_name,age from subscribers where c_id>=71 and c_id<=75;
 select c_id ,comments_on,reaction_type from subscribes
 where c_id>=75 or n_id >=5;
 select c_id,c_name,age from subscribers 
  where c_id between 71 and 75;
  select c_id,c_name,age from subscribers 
  where c_id  not between 71 and 75;
  -- set membership 
  select n_id,n_date from news where n_id in(1,5);
  select n_id,n_date from news where n_id not in (1,5);
  -- order by 
  select n_id, comments_on,reaction_type from subscribes order by
  n_id ;
  select n_id, comments_on,reaction_type from subscribes order by
  n_id,c_id ;

  -- pattern matching 
   select t_id,title from topics where
   title  like '%ion' ; 
   --use of distint
   select distinct(c_id) from subscribes;
   -- aggegate function 
   select max(n_id) from news;
   select min(c_id) from subscribers;
   select count (c_id) from subscribers;
   select count(*) from subscribers; 
   select avg(n_id) from subscribes;
   select count(distinct(n_id)) from news ;
   select avg(nvl(n_id,0)) from subscribes;
   
-- group by clause 
 select n_date, count(n_id) from news where t_id <15 group by n_date;
  select n_date, count(n_id) from news group by n_date ;
 
  ---Having clause
  select n_date  from news group by n_date having count(n_id) < 5;


----lab 05
 ---in 
 select c_id,c_name, age from subscribers where c_name IN ('amin','rafi');
 select c_id ,c_name from subscribers where 
 c_name IN (select c_name from subscribers where
     age=21
 );

 --uninon operation 
 select n_id ,n_description from news where n_id <5
 union  select n_id ,n_description from news where t_id >15;
 --intersection 
 select n_id ,n_description from news 
 intersect  select n_id ,n_description from news where t_id >15;
 --minus 
 select n_id ,n_description from news 
 minus  select n_id ,n_description from news where t_id >15; 
---lab 06
--simple join 
select n.n_description,n.n_date,t.title from news n join
topics t on n.t_id=t.t_id ;
--natural join 
select n.n_description,n.n_date,t.title from news n natural join
topics t ;
---inner join
select n.n_description,n.n_date,t.title from news n   inner join
topics t on n.t_id=t.t_id ;

select n.n_description,n.n_date,t.title from news n   left outer join
topics t on n.t_id=t.t_id ;
select n.n_description,n.n_date,t.title from news n   right  outer join
topics t on n.t_id=t.t_id ;
select n.n_description,n.n_date,t.title from news n   full outer join
topics t on n.t_id=t.t_id ;
---self join 
select p.n_id from news p minus 
select q.n_id from news q join news p on 
q.n_id<p.n_id;
