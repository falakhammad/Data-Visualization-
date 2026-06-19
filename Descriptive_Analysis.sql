#Total Students
SELECT COUNT(*) AS Total_Students
FROM students;

#Average Sleep Duration
SELECT ROUND(AVG(Sleep_Hours_Per_Night),2) AS Avg_Sleep
FROM students;

#Average Daily Social Media Usage
SELECT ROUND(AVG(Avg_Daily_Usage_Hours),2) AS Avg_Usage
FROM students;

#Student Countby Gender
SELECT Gender,
       COUNT(*) AS Total_Students
FROM students
GROUP BY Gender;

