use QuanLySinhVien;

select Address, count(StudentID) "Số lượng học sinh (sinh viên)"
from Student
group by Address;

select sum(Mark) / count(Mark) 'Điểm trung bình' 
from Mark
group by StudentID;

select s.studentID, s.StudentName, sum(Mark) / count(Mark) avg_score 
from Mark m
join Student s on s.studentID = m.MarkId
group by s.StudentID
having avg_score >= 15;

SELECT S.StudentId, S.StudentName, AVG(Mark)
FROM Student S join Mark M on S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName
HAVING AVG(Mark) >= ALL (SELECT AVG(Mark) FROM Mark GROUP BY Mark.StudentId);
