use QuanLySinhVien;

select * 
from `Subject`
where credit >= all (select credit from `Subject`);

select *
from `Subject` s 
join Mark m on s.SubID = m.SubID
where m.mark = all (select max(Mark) from Mark);

select s.*, avg(m.Mark) avg_mark
from Student s join Mark m on m.StudentID = s.StudentID
group by s.StudentID
order by avg_mark desc;