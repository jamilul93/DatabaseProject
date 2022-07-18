      SET SERVEROUTPUT ON 
      DECLARE 
      date_e NEWS.n_date % type;
      news_Title topics.title%type :='business';
      BEGIN 
        select n_date into date_e 
        from news ,topics
        where news.t_id=topics.t_id and
        title=news_Title;
        dbms_output.put_line(news_title||' news '||'entered on '||date_e );
        END ;
        /
        --using cursor and loop i plsql
        set SERVEROUTPUT on
        DECLARE
          cursor news_cur is select n_id,n_date from news;
          news_record news_cur%ROWTYPE;
          BEGIN
          open news_cur;
          loop
            fetch news_cur into news_record;
            EXIT when news_cur%ROWCOUNT >6;
            dbms_output.put_line('n_id:'||news_record.n_id||' '|| news_record.n_date);
            end loop ;
            close news_cur;
            end;
            /

          --plsql procedure 
          set SERVEROUTPUT on
          create or replace procedure getemp IS
          news_id news.n_id%type;
          news_desc news.n_description%type;
          BEGIN 
          news_id :=5;
          select n_description into news_desc
          from news 
          where n_id=news_id;
          dbms_output.put_line('news description:'||news_desc);
          End;
          /
          BEGIN 
              getemp;
            END ;
              /

        ---plsql function
          create or replace function avg_age return number is 
          avg_ag subscribers.age%type;
          BEGIN 
            select AVG(age) into avg_ag
            from subscribers;
            return avg_ag;
            end ;
            /
            set SERVEROUTPUT on 
            BEGIN dbms_output.put_line('Average age '||avg_age);
            End;
            /


          -- plsql eles if 
          set SERVEROUTPUT on 
          DECLARE
             old_age subscribers.age%type;
             new_age subscribers.age%type;
             typee  subscribers.c_type%type;

          Begin 
             typee := 'child';
             select age into old_age
             from subscribers
             where c_type like typee;
             if old_age<20 then
               new_age := old_age;
             elsif old_age>=20 and old_age<=40 then
               new_age := (old_age+5);
              elsif old_age>40 then 
              new_age := (old_age+10);
              end if ;
              dbms_output.put_line (typee||'old_agee ='||old_age|| 'new_age='|| new_age);
              End;
              /

             
        
             
        
            --trigger 
            drop trigger TR_Age;
            create trigger TR_Age
            before update or insert on subscribers
            for each row 
            begin 
             if :new.age<20 then 
            :new.c_type:='child' ;
            elsif :new.age>20 and :new.age<50  then
            :new.c_type:='adult';
            elsif  :new.age>50 then
            :new.c_type:='senior_citizen';
            end if;
            end TR_Age;
            /
            insert into subscribers values(81,'jacki',42,null);

            --transaction managemnt 
          DROP TABLE dummy ;
          CREATE TABLE dummy (
          Roll int,
          Name Varchar (10)
          );
          INSERT INTO dummy VALUES (1, 'A');
          INSERT INTO dummy VALUES (2, 'B');
          INSERT INTO dummy VALUES (3, 'C');
          INSERT INTO dummy VALUES (4, 'D');
          INSERT INTO dummy VALUES (5, 'E');
          COMMIT;
          select * from dummy ;
          delete from dummy ;
          rollback ;
          select * from dummy ;
          INSERT INTO dummy VALUES (6, 'F');
          savepoint cont_6 ;
          INSERT INTO dummy VALUES (7, 'G');
          savepoint cont_7;
          rollback to cont_6;
          select * from dummy ;

          ---date ---

          select sysdate from dual ;
          select current_date from dual ;

          select add_months (n_date,2) as two_months_extension
          from news 
          where n_id=5;
          select add_months (n_date,-2) as two_months_extension
          from news 
          where n_id=5;

         ---- view
          CREATE VIEW subscribers_view AS
          SELECT c_name, age
          FROM  subscribers;
          drop view subscribers_view;
          select * from subscribers_view;
          CREATE VIEW subscribers_view AS
            SELECT c_name, age
            FROM  subscribers
            WHERE age >25
            WITH CHECK OPTION;
 






            



    


