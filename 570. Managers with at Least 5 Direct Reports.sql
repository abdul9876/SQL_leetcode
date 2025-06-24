select e.name from Employee e join Employee m on e.id = m.managerId Group By e.id,m.managerId having count(*)>=5;
