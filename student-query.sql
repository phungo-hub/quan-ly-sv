use QuanLySinhVien;

SELECT * FROM Student;

SELECT * 
FROM Student
WHERE Status = true;

SELECT *
FROM Subject
WHERE Credit < 10;

SELECT s.StudentID, s.StudentName, c.ClassID
FROM Student s JOIN Class c ON s.ClassID = c.ClassID
WHERE c.ClassName = 'A1';

SELECT s.StudentID, s.StudentName, sub.SubName, m.Mark
FROM Student s JOIN Mark m ON s.StudentID = m.StudentID 
JOIN Subject sub ON sub.SubId = m.SubID
WHERE sub.SubName = 'CF';