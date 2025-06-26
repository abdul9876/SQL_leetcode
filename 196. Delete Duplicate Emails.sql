delete from Person where id not in(
  select * from ( select min(id) from Person Group by email
) as keep_i
);
