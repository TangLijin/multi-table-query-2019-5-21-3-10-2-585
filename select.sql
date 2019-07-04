# 1.查询同时存在1课程和2课程的情况
select student.* from student,student_course sc1,student_course sc2 where id=sc1.studentId and sc1.studentId=sc2.studentId 
and sc1.courseId='1' and sc2.courseId='2';
# 2.查询同时存在1课程和2课程的情况
select student.* from student,student_course sc1,student_course sc2 where id=sc1.studentId and sc1.studentId=sc2.studentId 
and sc1.courseId='1' and sc2.courseId='2';
# 3.查询平均成绩大于等于60分的同学的学生编号和学生姓名和平均成绩
select student.name,avg(score) from student,student_course where id=studentId group by studentId having avg(score)>=60;
# 4.查询在student_course表中不存在成绩的学生信息的SQL语句
select distinct student.* from student_course,student where studentId=id and score is null;
# 5.查询所有有成绩的SQL
select * from student_course where score is not NULL;
# 6.查询学过编号为1并且也学过编号为2的课程的同学的信息
select student.* from student,student_course sc1,student_course sc2 where id=sc1.studentId and sc1.studentId=sc2.studentId 
and sc1.courseId='1' and sc2.courseId='2';
# 7.检索1课程分数小于60，按分数降序排列的学生信息
select student.* from student,student_course where id=studentId and courseId='1' and score<60 order by score;
# 8.查询每门课程的平均成绩，结果按平均成绩降序排列，平均成绩相同时，按课程编号升序排列
select courseId,avg(score) from student_course group by courseId order by score desc,courseId asc;
# 9.查询课程名称为"数学"，且分数低于60的学生姓名和分数
select student.name,score from student,course,student_course where student.id=studentId and course.name='数学' and score<60;
