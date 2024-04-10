select * from users;

-- US01-1
-- OPT 1
select count(id) from users;   -- 301  -- ACTUAL
select count(distinct id ) from users; -- 301 --ACTUAL


 -- opt 2
select  id from users;
-- getAllColumnAsList --> List --> size --> EXPECTED
-- getAllColumnAsList --> Set  --> size --> EXPECTED

select * from users;





