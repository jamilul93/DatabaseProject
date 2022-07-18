Drop table subscribes;
Drop table subscribers;
Drop table news ;
drop table topics ;
create table topics(
  t_id integer primary key,
  title varchar(20)
);
create table news  (
  n_id integer primary key,
  n_description varchar (20),
  n_date varchar (20),
  t_id integer, 
  foreign key (t_id) references topics(t_id)
);

create table subscribers(
    c_id integer primary key,
    c_name varchar (20),
    age integer ,
    c_type varchar (20)
);
create table subscribes(
    n_id integer,
    c_id integer,
    reaction_type varchar (20),
    comments_on varchar (20),
    primary key (n_id,c_id),
    foreign key (n_id) references news on delete cascade ,
    foreign key (c_id) references subscribers on delete cascade
);
