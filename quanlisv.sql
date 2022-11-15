create database QuanLySinhVien;
use QuanLySinhVien;

create table Class
(
	ClassID int not null auto_increment primary key,
    ClassName varchar(60) not null,
    StartDate Datetime not null,
    Status    BIT
);

create table Student
(
	StudentID int not null auto_increment primary key,
    StudentName varchar(30) not null,
    Address varchar(50),
    Phone varchar(20),
    Status BIT,
    ClassID int not null
);

alter table Student add foreign key (ClassId) references Class(ClassID);

create table Subject 
(
	SubId int not null auto_increment primary key,
    SubName varchar(30) not null,
    Credit tinyint not null default 1 check(credit >= 1),
    Status bit default 1
);
create table Mark 
(
	MarkID int not null auto_increment primary key,
    SubID int not null,
    StudentID int not null, 
    Mark FLOAT DEFAULT 0 CHECK ( Mark BETWEEN 0 AND 100),
    ExamTimes TINYINT DEFAULT 1,
    UNIQUE (SubId, StudentId),
    FOREIGN KEY (SubId) REFERENCES Subject (SubId),
    fOREIGN KEY (StudentId) REFERENCES Student (StudentId)
    );
    
    