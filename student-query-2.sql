use QuanLySinhVien;

select StudentID, StudentName
from student
where StudentName like 'H%';

select ClassID,ClassName
from Class
where month(StartDate) = 12;

select SubId, SubName
from Subject
where Credit between 3 and 5;

SET SQL_SAFE_UPDATES = 0;
update Student
set ClassID = 2
where StudentName = 'Hung';

select s.StudentName, sub.SubName, m.Mark
from Student s join Mark m on s.StudentID = m.StudentID
join Subject sub on m.SubID = sub.SubID
order by m.Mark desc, s.StudentName asc;