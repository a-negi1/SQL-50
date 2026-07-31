select e1.name,e2.unique_id
from Employee as e1 
left join
Employee as e2
on 
e1.id = e2.id