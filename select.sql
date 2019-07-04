# 1.查询同时存在1课程和2课程的情况
select * from student_sourse sc1,student_sourse sc2 where sc1.courseId=1 and sc2.courseId=2;
# 2.查询同时存在1课程和2课程的情况
select * from student_sourse sc1,student_sourse sc2 where sc1.courseId=1 and sc2.courseId=2;
# 3.查询平均成绩大于等于60分的同学的学生编号和学生姓名和平均成绩
select student.id,student.name,AVG(score) from student,course,student_course where student.id = studentId group by studentId 
       having AVG(score)>=60;
# 4.查询在student_course表中不存在成绩的学生信息的SQL语句
select * from student_course where score IS NULL;
# 5.查询所有有成绩的SQL
select * from student_course where score is not NULL;
# 6.查询学过编号为1并且也学过编号为2的课程的同学的信息
select student.* from student,student_course sc1,student_sourse sc2 where id=sc1.studentId and sc1.studentId=sc2.studentId 
   and sc1.courseId=1 and sc2.courseId=2;
# 7.检索1课程分数小于60，按分数降序排列的学生信息
select student.* from student,student_course where score<60 order by score desc;
# 8.查询每门课程的平均成绩，结果按平均成绩降序排列，平均成绩相同时，按课程编号升序排列
select course.name,avg(score) from student_course group by course.id order by avg(score) desc,courseId asc;
# 9.查询课程名称为"数学"，且分数低于60的学生姓名和分数
select student.name,score from student,course,student_course where course.name="数学" and course.id=couseId and  score<60;
