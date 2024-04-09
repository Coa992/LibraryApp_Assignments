select * from users;

-- US01-1
-- OPT 1
select count(id) from users;   -- 301  -- ACTUAL
select count(distinct id ) from users; -- 301 --ACTUAL


 -- opt 2
select  id from users;
-- getAllColumnAsList --> List --> size --> EXPECTED
-- getAllColumnAsList --> Set  --> size --> EXPECTED


SHOW COLUMNS FROM users;
SELECT
    CASE WHEN EXISTS (
        SELECT 1
        FROM information_schema.columns
        WHERE table_name = 'users'
          AND column_name IN ('id', 'full_name', 'email', 'password', 'user_group_id', 'image', 'extra_data', 'status', 'is_admin', 'start_date', 'end_date', 'address')
    ) THEN 'Columns found'
         ELSE 'Columns not found'
        END AS verification_result;


